#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: 内置模块.py
@time: 2020/8/30 22:24
@desc: 
"""

import os,sys,uuid
import random,datetime,time

#OS模块 调用操作系统模块  ；sys 系统相关的功能 ；uuid用来生成一个全局唯一的模块
# 获取操作系统的名字 window系列 NT    非window posix
# print(os.name)
# print(os.path.abspath('内置模块.py'))  #获取文件的绝对路径
# print(os.path.isdir("内置模块.py"))    #判断是否是文件夹
# print(os.path.isfile("内置模块.py"))   #判断是否是文件
# print(os.path.exists("内置模块.py"))   #判断文件是否存在
# print(os.path.splitext("12.12.321.内容.js"))  #分割文件名和后缀
# os.getcwd()                              #获取当前的工作目录，即当前python脚本工作的目录
# os.chdir('demo')                         #改变当前脚本工作目录 相当于cmd中的cd
# os.rename("内容.js","snackdeng.py")      #文件重命名
# os.remove('内容.js')                     #删除文件
# os.rmdir('demo')                         #删除空文件夹
# os.removedirs('demo')                    #删除空文件夹
# os.mkdir('demo')                         #创建文件夹
# os.chdir('C://')                         #切换工作目录
# os.listdir('C://')                       #列出指定目录里的所有文件和文件夹
# os.environ                               #获取环境配置
# os.environ.get("PATH")                   #获取指定的环境配置


# sys.exit(100)                            #中止程序(退出码)
# sys.path                                 #表示查找模块的路径
# sys.stdin                                #接收用户的输入
# sys.stdout                               #修改sys.stdout，可以改变默认输出位置
# sys.stderr                               #修改sys.stderr，可以改变错误输出的默认位置


# random.randint(2,9)                      #生成[2，9]的整数
# random.random()                          #用来生成[0,1)的随机浮点数
# random.randrange(2,9)                    #用来生成[2，9)的随机整数
# random.choice([])                        #在可迭代对象里随机抽取一个数据
#random.sample([],2)                       #在可迭代对象里随机抽取nub个数据


# print(datetime.datetime.now())                  #2020-08-30 23:09:44.589094
# print(datetime.date(2020,1,1))                  #创建一个日期
# print(datetime.time(18,23,45))                  #创建一个时间
# print(datetime.datetime.now() + datetime.timedelta(3))                  #计算3天后的日期时间


print(time.strftime("%Y-%M-%d %H:%M:%S"))  #按指定格式输出时间 2020-14-30 23:14:18
print(time.strftime("%Y%M%d%H%M%S"))  #按指定格式输出时间 20201430231418


uuid.uuid1()            #32个长度