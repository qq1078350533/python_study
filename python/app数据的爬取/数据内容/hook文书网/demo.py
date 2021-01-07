#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: demo.js
@time: 2020/8/24 11:18
@desc:
"""

import random, time, datetime
import requests
import base64
import enc_des


# 请求的id生成
def make_id():
    """id
    """
    return datetime.datetime.now().strftime('%Y%m%d%H%M%S')


# 解密
def decpry(content, key, iv):
    desede = enc_des.Desede()
    data = desede.decrypt(content, key, iv)
    return data


# 请求
def post(ciphertext):
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "User-Agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Mobile Safari/537.36",
        "Host": "wenshuapp.court.gov.cn",
        "Connection": "Keep-Alive",
        "Accept-Encoding": "gzip",
    }
    request = {"id": make_id(),
               "command": "queryDoc",
               "params": {"pageNum": "1",
                          "sortFields": "s50:desc",
                          "ciphertext": ciphertext,
                          "devid": "927cea15a8dd4223bfefeb236836212f",
                          "devtype": "1",
                          "pageSize": "20",
                          "queryCondition": [{"key":"s8","value":"02"}]}  # 关键词
               }
    # 加密
    a = str(request)
    request1 = base64.b64encode(a.encode('utf-8')).decode('utf-8')
    print(request1)
    data = {
        'request': request1
    }
    response = requests.post("http://wenshuapp.court.gov.cn/appinterface/rest.q4w", headers=headers, data=data).json()
    print(response)
    content = response['data']['content']
    key = response['data']['secretKey']
    return content, key


# 3des加密
def des(time, key, iv):
    desede = enc_des.Desede()
    data = desede.encryption(time,key,iv)
    return data


# ciphertext列表形式
def ciphertext_list(str1):
    string = ""
    print(str1)
    for i in str1:
        if i != 1:
            string += " "
        string += bin(ord(i)).replace("0b", '')
    string += ""
    return string


# 获取3des的加密参数
def ciphertext_str():
    cArr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
            'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F',
            'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    str = ""
    for i in range(24):
        a = random.random() * 24
        str += cArr[round(a)]
    return str


def main():
    sb = ""
    sb2 = ""
    times = str(int(time.time() * 1000))
    str3 = datetime.datetime.now().strftime('%Y%m%d')
    # 3DES  明文是times  key是 ciphertext_str()
    desen = des(times, ciphertext_str(), str3)
    print(times, ciphertext_str(), str3)
    desen = ciphertext_str() + str3 + desen
    ciphertext = ciphertext_list(desen)
    content, key = post(ciphertext)
    text = decpry(content, key, str3)
    print(text)


if __name__ == '__main__':
    main()
