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
    data = f'model=VOG-AL10&goodsLoadDate=1607011200000&osVersion=7.1.2&brand=HUAWEI&osType=1&imei=863064375288315&appVersion=5.3.0&' \
            f'network=4&devVersion=130&customerType=6&serviceVersion=2011&carLengthId=8&isHomePage=1&token=8d01a984e924ee15576652444811e4e2&' \
            f'stopPoints=%5B%7B%22address%22%3A%22%E5%B8%B8%E7%94%AB%E8%B7%AF%22%2C%22cityName%22%3A%22%E5%BB%8A%E5%9D%8A%E5%B8%82%22%2C%22contactMobile%22%3A%2217765818360%22%2C%22contactName%22%3A%22%E9%99%88%E7%A5%A5%22%2C%22districtName%22%3A%22%E5%AE%89%E6%AC%A1%E5%8C%BA%22%2C%22latitude%22%3A39.509063%2C%22longitude%22%3A116.708928%2C%22provinceName%22%3A%22%E6%B2%B3%E5%8C%97%E7%9C%81%22%7D%2C%7B%22address%22%3A%22%E7%8E%AF%E5%9F%8E%E5%8C%97%E8%B7%AF44%E5%8F%B7%22%2C%22cityName%22%3A%22%E8%A5%BF%E5%AE%89%E5%B8%82%22%2C%22contactMobile%22%3A%2217765818360%22%2C%22contactName%22%3A%22%E9%99%88%E7%A5%A5%22%2C%22districtName%22%3A%22%E6%96%B0%E5%9F%8E%E5%8C%BA%22%2C%22latitude%22%3A34.277618%2C%22longitude%22%3A108.961831%2C%22provinceName%22%3A%22%E9%99%95%E8%A5%BF%E7%9C%81%22%7D%5D&networkType=1&carModelId=1&' \
            f'appKey=24b7e468611fc912f1f4ce22e9e8a463&signature={signature}&reqTimestamp={reqTimestamp}&nonce={nonce}'
    # print(url, data)
    res = requests.post(url, headers=headers, data=data)
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
    str1 = "24b7e468611fc912f1f4ce22e9e8a463&" + ts10 + "&6ec9ed1e4106f9cb1ad874cfe5b81521&"  + str(nonce)
    signature = USE_MD5(str1)
    return nonce, signature, ts10


if __name__ == '__main__':
    get()