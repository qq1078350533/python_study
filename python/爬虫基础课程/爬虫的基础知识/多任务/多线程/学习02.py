# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""
import threading
import time
from queue import Queue


def job(l, q):
    for i in range(len(l)):
        l[i] = l[i] * 2
        time.sleep(1)
    q.put(l)


def multithreading():
    q = Queue()
    threads = []
    data = [[1, 2, 3], [2, 34, 33], [2, 2, 3], [2, 1, 3]]
    for i in range(4):
        t = threading.Thread(target=job, args=(data[i], q))
        t.start()
        threads.append(t)
    for thread in threads:
        thread.join()
    result = []
    for _ in range(4):
        result.append(q.get())
    print(result)

if __name__ == '__main__':
    multithreading()