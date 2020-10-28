#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: demo.py
@time: 2020/8/25 14:23
@desc: app版本：2.3
"""
# {"equtype":"ANDROID","loginImei":"Android862846363896419","sign":"A08EA72E5DD7518A23FDABA1533AA9F4","timeStamp":"1598332646343","userPwd":"1234567890","username":
# "12345672673"}

# sign 就是剩下的排序然后md5加密大写       总的加密是des cbc , pkcs7 hex utf8 base64
# {"equtype":"ANDROID","loginImei":"Android862846363896419","sign":"A08EA72E5DD7518A23FDABA1533AA9F4","timeStamp":"1598332646343","userPwd":"1234567890","username":
# "12345672673"}
import execjs,time
from enc_des import des_CBC
from enc_des import md5_encryption

timestamp = int(time.time()*1000)


def sign():
    str = f"equtype=ANDROID&loginImei=Android862846363896419&timeStamp={timestamp}&userPwd=1111111&username=13387832983&key=sdlkjsdljf0j2fsjk"
    sign = md5_encryption(str)
    return sign.upper()


def date(sign):
    dicts = '{"equtype":"ANDROID","loginImei":"Android862846363896419","sign":%s,"timeStamp":"1598603012633","userPwd":"111222","username":"13348783892"}' % sign
    print(dicts)
    key = md5_encryption("65102933")
    iv = "32028092"
    with open("des.js", "r") as f:
        js = f.read()
        ctx = execjs.compile(js)
    den = ctx.call("DES_Encrypt", dicts, key, iv)
    print(den)
    return den


if __name__ == '__main__':
    sign = sign()
    Encrypt = date(sign)
    print(Encrypt)
#{"Encrypt":"NIszaqFPos1vd0pFqKlB42Np5itPxaNH\/\/FDsRnlBfgL4lcVxjXii40cBtCNwSpxR8mhl\/WSqdQR\nIXT3H9M5zpzB0VcrJfH5O0HWNbyET2o7g1XPCmUbZFxhh6Y0lv58K9z6JGevXzObJ4jGIvjCuK4q\n8Bz5CCPjXrcExi38ffxzXpPPpAw7C+1ghx4tI01D0ykGtKk06MpflMerUBCLVyljFFjaejlzRlPO\ndvZE3Is=\n"}