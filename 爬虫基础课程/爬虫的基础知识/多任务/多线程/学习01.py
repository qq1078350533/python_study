# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""

import threading
import time


def thread_job():
    # print("This is an added Thread, number is {}".format(threading.current_thread()))
    print("T1 start\n")
    for i in range(10):
        time.sleep(0.5)
    print("T1 finish\n")

def T2_job():
    print("T2 start\n")
    time.sleep(1)
    print("T2 finish\n")

def main():
    addded_thread = threading.Thread(target=thread_job, name="T1") # name是给线程取别名
    thread2 = threading.Thread(target=T2_job, name="T2") # name是给线程取别名
    # print(threading.active_count())  #显示激活的线程的个数
    # print(threading.enumerate())  # 显示线程的列表
    # print(threading.current_thread())  #显示正在运行线程
    addded_thread.start()
    # addded_thread.join()  #作用是等待这个线程运行完毕之后在继续往下走
    thread2.start()
    thread2.join()
    print("all done")




if __name__ == '__main__':
    main()