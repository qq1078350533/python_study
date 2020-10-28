import threading
import time

def test1(temp):
    temp.append(33)
    print('......in test1 temp={}'.format(str(temp)))


def test2(temp):
    print('......in test2 temp={}'.format(str(temp)))


g_ums = [11,22]

def main():
    #target制定将来这个线程去那个函数执行
    #args指定将来调用函数的时候传递什么函数过去
    t1 = threading.Thread(target=test1,args=(g_ums,))
    t2 = threading.Thread(target=test2,args=(g_ums,))

    t1.start()
    time.sleep(1)

    t2.start()
    time.sleep(1)

    print(".......in main Thread g_ums = {}".format(g_ums))

if __name__ == '__main__':
    main()