# -*- coding: utf-8 -*-
# @Time : 2020-11-27 18:38 
# @Author : Snackdeng
import random, time, hashlib, requests
from urllib3 import disable_warnings

disable_warnings()


def get():
    url = "https://xcustomer2.fuyoukache.com/api/app/quote/getRecommendPrice"
    headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Host': 'xcustomer2.fuyoukache.com',
        'Connection': 'Keep-Alive',
        'Accept-Encoding': 'gzip',
        'User-Agent': 'okhttp/3.12.0',
    }
    nonce, signature, reqTimestamp = get_mes()
    data = f'model=VOG-AL10&goodsLoadDate=1606507200000&osVersion=7.1.2&brand=HUAWEI&osType=1&imei=863064375288315&appVersion=5.2.1&' \
           f'network=23&devVersion=121&customerType=6&serviceVersion=2010&carLengthId=8&token=c71e2f0db450ef397faa280f13de1241&' \
           f'stopPoints=%5B%7B%22address%22%3A%22%E7%AB%99%E5%89%8D%E8%B7%AF1%E5%8F%B7%22%2C%22cityName%22%3A%22%E5%90%88%E8%82%A5%E5%B8%82%22%2C%22contactMobile%22%3A%2217765818360%22%2C%22contactName%22%3A%22%E9%99%88%E7%A5%A5%22%2C%22districtName%22%3A%22%E7%91%B6%E6%B5%B7%E5%8C%BA%22%2C%22latitude%22%3A31.885135%2C%22longitude%22%3A117.316937%2C%22provinceName%22%3A%22%E5%AE%89%E5%BE%BD%E7%9C%81%22%7D%2C%7B%22address%22%3A%22%E9%BE%99%E8%9F%A0%E8%B7%AF111%E5%8F%B7%22%2C%22cityName%22%3A%22%E5%8D%97%E4%BA%AC%E5%B8%82%22%2C%22contactMobile%22%3A%2217765818360%22%2C%22contactName%22%3A%22%E9%99%88%E7%A5%A5%22%2C%22districtName%22%3A%22%E7%8E%84%E6%AD%A6%E5%8C%BA%22%2C%22latitude%22%3A32.087104%2C%22longitude%22%3A118.797499%2C%22provinceName%22%3A%22%E6%B1%9F%E8%8B%8F%E7%9C%81%22%7D%5D&networkType=1&carModelId=1' \
           f'&appKey=24b7e468611fc912f1f4ce22e9e8a463&signature={signature}&reqTimestamp={reqTimestamp}&nonce={nonce}'
    # print(url, data)
    res = requests.post(url, headers=headers, data=data, verify=False)
    print(res.json())


def USE_MD5(test):
    if not isinstance(test, bytes):
        test = bytes(test, 'utf-8')
    m = hashlib.md5()
    m.update(test)
    return m.hexdigest()


def get_mes():
    ts13 = str(int(time.time()* 1000))
    ts10 = ts13[0:10]
    nonce = random.randint(-4294967296, 4294967296)
    str1 = "24b7e468611fc912f1f4ce22e9e8a463&" + "6ec9ed1e4106f9cb1ad874cfe5b81521&" + ts10 + '&' + str(nonce)
    print(str1)
    signature = USE_MD5(str1)
    return nonce, signature, ts10


if __name__ == '__main__':
    get()
    # print(USE_MD5('24b7e468611fc912f1f4ce22e9e8a463&1606487624&6ec9ed1e4106f9cb1ad874cfe5b81521&-371141155'))