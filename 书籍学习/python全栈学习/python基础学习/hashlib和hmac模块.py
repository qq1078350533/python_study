#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: hashlib和hmac模块.py
@time: 2020/8/30 23:15
@desc: 
"""
import hashlib,hmac
#hashlib 主要支持md5，sha加密

h1 = hashlib.sha1('1233'.encode())
h1 = hashlib.sha224('1233'.encode())
h1 = hashlib.sha256('1233'.encode())
h1 = hashlib.sha384('1233'.encode())
h1 = hashlib.sha512('1233'.encode())
print(h1.hexdigest())
