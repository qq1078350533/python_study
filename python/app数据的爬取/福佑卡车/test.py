# -*- coding: utf-8 -*-
# @Time : 2020-11-27 18:38 
# @Author : Snackdeng
import random, time, hashlib

def get():



def USE_MD5(test):
    if not isinstance(test, bytes):
        test = bytes(test, 'utf-8')
    m = hashlib.md5()
    m.update(test)
    return m.hexdigest()

ts13 = str(int(time.time())*1000)
ts10 = ts13[0:10]

ret = random.randint(1000000000, 9999999999)
str = "24b7e468611fc912f1f4ce22e9e8a463" + "6ec9ed1e4106f9cb1ad874cfe5b81521" + str(ts10) + str(ts13)
signature = USE_MD5('str')
print(signature)