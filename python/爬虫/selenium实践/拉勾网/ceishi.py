import os
import sys
import cv2
import numpy as np
import time


def change_door(open_later_time,isOpen,new_face_position):
    if len(new_face_position) > 0 and isOpen == False:
        print('打开')
        isOpen = True
    if len(new_face_position) == 0 and isOpen == True:
        open_later_time += 1
    else:
        open_later_time = 0
    if open_later_time == 100:
        open_later_time = 0
        print('关闭')
        isOpen = False
    return open_later_time,isOpen,new_face_position


def read_images(path, sz=None):#给一个地址，返回训练集
    c = 0
    X, Y = [], []
    names = []
    for dirname, dirnames, filenames in os.walk(path):#目录，子目录，子文件（只限一层目录）
        for subdirname in dirnames:
            names.append(subdirname)
            subject_path = os.path.join(dirname, subdirname)
            for filename in os.listdir(subject_path):#遍历每个名字
                try:
                    if filename == ".directory":
                        continue
                    filepath = os.path.join(subject_path, filename)
                    im = cv2.imread(filepath, cv2.IMREAD_GRAYSCALE)
                    if im is None:
                        print("image " + filepath + " is none")
                    else:
                        print(filepath)
                    if sz is not None:
                        im = cv2.resize(im, (200, 200))

                    X.append(np.asarray(im, dtype=np.uint8))
                    Y.append(c)
                except IOError:
                    print("I/O error({0}): {1}".format(IOError.errno, IOError.strerror))

                except:
                    print("Unexpected error:", sys.exc_info()[0])

                    raise
            print(c)
            c = c + 1

    print(Y)
    print(names)

    return [X, Y], names


def face_rec():
    image_dir = './pic_dir_1'
    isOpen = False
    open_later_time = 0

    [X, Y], names = read_images(image_dir)
    Y = np.asarray(Y, dtype=np.int32)

    model = cv2.face.LBPHFaceRecognizer_create()

    model.train(np.asarray(X), np.asarray(Y))
    camera = cv2.VideoCapture(0)
    camera.set(cv2.CAP_PROP_FRAME_WIDTH, 400)
    camera.set(cv2.CAP_PROP_FRAME_HEIGHT, 350)
    face_cascade = cv2.CascadeClassifier('./cascades/haarcascade_frontalface_default.xml')
    re_count = 0
    old_face_position = {}#用来绘制预测框
    new_face_position = {}#用来收集新数据
    while (True):
        #print(old_face_position)
        #print(new_face_position)
        re_count += 1
        read, img = camera.read()
        faces = face_cascade.detectMultiScale(img, scaleFactor =1.3, minNeighbors=5)
        #print('{}的类型{}'.format(faces, type(faces)))
        for (x, y, w, h) in faces:
            gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            roi = gray[x:x + w, y:y + h]
            try:
                roi = cv2.resize(roi, (200, 200), interpolation=cv2.INTER_LINEAR)
                #print(roi.shape)
                params = model.predict(roi)
                #print("Label: %s, Confidence: %.2f" % (params[0], params[1]))
                new_face_position[names[params[0]]] = (x, y, w, h)
            except:
                continue

        #优化用户体验
        #采集三帧的人脸识别信息，将预测框画出，预测框三帧一刷新，防止预测框频繁抖动的现象
        if re_count == 3:
            re_count = 0
            #print(new_face_position)
            if len(new_face_position) > 0:
                for key in new_face_position.keys():
                    (x, y, w, h) = new_face_position[key]
                    if old_face_position.__contains__(key) is False:
                        img = cv2.rectangle(img, (x, y), (x + w, y + h), (255, 0, 0), 2)
                        cv2.putText(img, key, (x, y - 20), cv2.FONT_HERSHEY_SIMPLEX, 1, 255, 2)
                        old_face_position[key] = (x, y, w, h)
                    else:
                        (o_x, o_y, o_w, o_h) = new_face_position[key]
                        if abs((o_x-x)) <= 5 and abs((o_y-y)) <= 5:
                            img = cv2.rectangle(img, (x, y), (x + w, y + h), (255, 0, 0), 2)
                            cv2.putText(img, key, (x, y - 20), cv2.FONT_HERSHEY_SIMPLEX, 1, 255, 2)
                            old_face_position[key] = (x, y, w, h)
            else:
                old_face_position = {}
            new_face_position = {}
        else:
            for key in old_face_position.keys():
                (o_x, o_y, o_w, o_h) = old_face_position[key]
                img = cv2.rectangle(img, (o_x, o_y), (o_x + o_w, o_y + o_h), (255, 0, 0), 2)
                cv2.putText(img, key, (o_x, o_y - 20), cv2.FONT_HERSHEY_SIMPLEX, 1, 255, 2)

        #开关门模拟和保存打卡信息
        #如果检测到人，并且门没有开，则打开门，并且录入信息
        if len(new_face_position) > 0 and isOpen == False:
            print('开门')
            #保存打卡信息
            t = time.strftime('%Y.%m.%d %H:%M:%S', time.localtime(time.time()))
            with open('jilu.txt', 'a') as file:
                file.writelines('{},{}\n'.format(new_face_position.keys(),t))
            isOpen = True
        #如果没有检测到人，并且门开了，计数器+1，否则计数器为0
        if len(new_face_position) == 0 and isOpen == True:
            open_later_time += 1
        else:
            open_later_time = 0
        #当计数器为100的时候关门
        if open_later_time == 100:
            print('关门')

