#互斥锁的目的：为了避免多个线程几乎同时修改某一个共享数据的时候，需要进行同步控制
# 线程同步能够保证多个线程安全的访问竞争资源，最简单的方式就是引入互斥锁
import threading
import time

num = 0
#创建锁,默认是打开的
mutex = threading.Lock()

class MyThread(threading.Thread):
    def run(self):
        global num
        #上锁
        mutex.acquire()
        num += 1
        time.sleep(0.5)
        msg = self.name + 'set num to' + str(num)
        print(msg)
        #解锁
        mutex.release()


def teet():
    for i in range(5):
        t = MyThread()
        t.start()

if __name__ == '__main__':

    teet()