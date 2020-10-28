#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: 装饰器.py
@time: 2020/8/30 22:19
@desc: 
"""
import time,datetime

@time.time
def demo():
    x = 0
    for i in range(1, 100000000):
        x += 1
    print(x)


def foo():
    print("hello")
    time.sleep(3)
    print("world")

demo()
foo()