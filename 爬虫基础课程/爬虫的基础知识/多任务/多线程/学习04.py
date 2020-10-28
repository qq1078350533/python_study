# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""
import time ,threading

def sing():
    for i in range(5):
        print("....唱歌。。。。。。")
        time.sleep(1)


def dance():
    for i in range(5):
        print("....跳舞。。。。。。")
        time.sleep(1)


def mian():
    t1 = threading.Thread(target=sing)
    t2 = threading.Thread(target=dance)
    t1.start()
    t2.start()


if __name__ == '__main__':
    mian()