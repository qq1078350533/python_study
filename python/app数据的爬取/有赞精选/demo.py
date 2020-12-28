# -*- coding: utf-8 -*-
# @Time : 2020-12-28 18:24
# @Author : Snackdeng
import hashlib
import time
import requests


def USE_MD5(test):
    if not isinstance(test, bytes):
        test = bytes(test, 'utf-8')
    m = hashlib.md5()
    m.update(test)
    return m.hexdigest()

def test():
    timeslep = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    url = "https://carmen.youzan.com/gw/entry/weapp.spotlight.search.rec.goodsarticle/1.0.0/list?"
    parms = f"v=1.0&method=weapp.spotlight.search.rec.goodsarticle.list&size=100&sign_method=md5&key=美妆&app_id=c9be2b0e1aeb5d0433&timestamp={timeslep}&sort_by=composite&page=1&format=json"
    masge_list = sorted(parms.split('&'))
    masge = ""
    for i in masge_list:
        a = ''.join(i.split("="))
        masge += a
    page = "19a65900bd1b1805d937b8d249a63d05" + masge + "19a65900bd1b1805d937b8d249a63d05"
    sign = USE_MD5(page)
    parms = parms + f"&sign={sign}"
    res = requests.get(url+parms)
    print(res.text)


if __name__ == '__main__':
    test()