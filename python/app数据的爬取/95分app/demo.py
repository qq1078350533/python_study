# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/05
注释：app版本为1.2.7
"""
import time
import requests
import hashlib


def md5_encryption(ss):
    # ss是需要加密的明文
    res = dict(k.split('=') for k in ss.split('&'))
    ss = ""
    for key in sorted(res.keys()):
        vaule = res[key]
        ss += vaule
    ss += "xgcpyh666"
    print(ss)
    m = hashlib.md5()
    m.update(bytes(ss,encoding="utf8"))
    return m.hexdigest()


headers = {
    'Host': 'www.95fenapp.com',
    'user-agent': 'Android5.1.1 Xiaomi CPU_ABI x86 CPU_ABI2 armeabi-v7a HARDWARE intel MODEL MI 9 fen95/1.2.7 dc(Android,c45b990dbdc1cee1,huawei)',
    'fen95-host': 'default',
}

params = (
    ('timestamp', '1596615798269'),
    ('token', '439018dc7ada9297281a3fab0f09078'),
)

url = f"https://www.95fenapp.com/api_goods/list/v3.0?page=1&page_size=20&scene=1&scene_type=95fen_android_home_personal&sn=HomeRecommendList&sort=hot&timestamp={int(time.time()*1000)}"
url_path = url + "&token=" + md5_encryption(url)
response = requests.get(url_path, headers=headers)
print(response.json())