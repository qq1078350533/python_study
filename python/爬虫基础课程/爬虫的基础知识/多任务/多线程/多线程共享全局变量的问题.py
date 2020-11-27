<<<<<<< HEAD
#这个程序的结果是错的，因为多线程占用资源，导致结果不正确
=======
<<<<<<< HEAD
#这个程序的结果是错的，因为多线程占用资源，导致结果不正确
=======
# 这个程序的结果是错的，因为多线程占用资源，导致结果不正确
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
import threading
import time

g_num = 0

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
def test1(num):
    global g_num
    for i in range(num):
        g_num += 1
    print('......in test1 temp={}'.format(g_num))


def test2(num):
    global g_num
    for i in range(num):
        g_num += 1
    print('......in test2 temp={}'.format(g_num))

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d0f0af6... 同步更新20201028
def main():
    #target制定将来这个线程去那个函数执行
    #args指定将来调用函数的时候传递什么函数过去
    t1 = threading.Thread(target=test1,args=(1000000,))
    t2 = threading.Thread(target=test2,args=(1000000,))
<<<<<<< HEAD
=======
=======

def main():
    # target制定将来这个线程去那个函数执行
    # args指定将来调用函数的时候传递什么函数过去
    t1 = threading.Thread(target=test1, args=(1000000,))
    t2 = threading.Thread(target=test2, args=(1000000,))
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028

    t1.start()
    t2.start()

<<<<<<< HEAD
    #等待上面两个线程执行完毕
=======
<<<<<<< HEAD
    #等待上面两个线程执行完毕
=======
    # 等待上面两个线程执行完毕
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
    time.sleep(5)

    print(".......in main Thread g_ums = {}".format(g_num))

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
if __name__ == '__main__':
    main()
