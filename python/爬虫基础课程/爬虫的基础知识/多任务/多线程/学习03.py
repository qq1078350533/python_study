# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""

import threading

def job1():
    global A,lock
    lock.acquire()   #锁住
    for i in range(10):
        A += 1
        print("job1",A)
    lock.release() # 解锁

def job2():
    global A,lock
    lock.acquire()  # 锁住
    for i in range(10):
        A += 10
        print("job2",A)
    lock.release()  # 解锁


if __name__ == '__main__':
    lock = threading.Lock()
    A = 0
    t1 = threading.Thread(target=job1)
    t2 = threading.Thread(target=job2)
    t1.start()
    t2.start()
    t1.join()
    t2.join()