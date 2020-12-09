# -*- coding: utf-8 -*-
# @Time : 2020-11-27 18:38 
# @Author : Snackdeng
import random, time, hashlib, requests
from urllib3 import disable_warnings

disable_warnings()


def get_prices():
    url = "https://xcustomer2.fuyoukache.com/api/app/quote/getRecommendPrice"
    headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Host': 'xcustomer2.fuyoukache.com',
        'Connection': 'Keep-Alive',
        'Accept-Encoding': 'gzip',
        'User-Agent': 'okhttp/3.12.0',
    }
    nonce, signature, reqTimestamp = get_mes()
    data = f'model=LIO-AN00&goodsLoadDate=1607355000000&osVersion=7.1.2&brand=HUAWEI&osType=1&imei=863064339622450&' \
           f'appVersion=5.3.1&network=4&devVersion=131&customerType=6&serviceVersion=2012&carLengthId=8&isHomePage=1&' \
           f'token=50c993d47893f411b1e00ff7e3c5fd82&stopPoints=%5B%7B%22address%22%3A%22%E8%8A%B1%E5%80%99%E8%B7%AF%22%' \
           f'2C%22cityName%22%3A%22%E9%95%BF%E6%B2%99%E5%B8%82%22%2C%22contactMobile%22%3A%2215367312074%22%2C%22cont' \
           f'actName%22%3A%22153****2074%22%2C%22districtName%22%3A%22%E9%9B%A8%E8%8A%B1%E5%8C%BA%22%2C%22latitude%22%3A28.' \
           f'147093%2C%22longitude%22%3A113.06551%2C%22provinceName%22%3A%22%E6%B9%96%E5%8D%97%E7%9C%81%22%7D%2C%7B%2' \
           f'2address%22%3A%22%E9%9D%92%E8%A1%A3%E6%B1%9F%E8%B7%AF%22%2C%22cityName%22%3A%22%E6%88%90%E9%83%BD%E5%B8%82' \
           f'%22%2C%22contactMobile%22%3A%2215367312074%22%2C%22contactName%22%3A%22153****2074%22%2C%22districtName%' \
           f'22%3A%22%E6%88%90%E5%8D%8E%E5%8C%BA%22%2C%22latitude%22%3A30.628931%2C%22longitude%22%3A104.141094%2C%22pro' \
           f'vinceName%22%3A%22%E5%9B%9B%E5%B7%9D%E7%9C%81%22%7D%5D&networkType=1&carModelId=1&' \
           f'appKey=24b7e468611fc912f1f4ce22e9e8a463&signature={signature}&reqTimestamp={reqTimestamp}&nonce={nonce}'
    # print(url, data)
    res = requests.post(url, headers=headers, data=data, verify=False)
    print(res.json())

def get_city(city):
    ts = int(time.time())
    url = "http://restapi.amap.com/v3/assistant/inputtips"
    headers = {}
    scode = get_scode(city, ts)
    data = f'output=json&keywords={city}&citylimit=false&key=b0884cd3cbddfe9f6c9dd0e8a7ed6569&language=zh-CN&ts={ts*1000}&scode={scode}'
    res = requests.post(url, headers=headers, data=data).json()
    print(res)

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
    str1 = "24b7e468611fc912f1f4ce22e9e8a463&" + ts10 +  '&' + "6ec9ed1e4106f9cb1ad874cfe5b81521&" + str(nonce)
    signature = USE_MD5(str1)
    return nonce, signature, ts10


def get_scode(city, ts):
    # ts = '1607352018'
    text = f'74:0E:D0:BF:F6:31:81:36:48:6D:E7:2E:5C:D3:ED:96:BB:9A:C0:0E:com.foryou.truck:{ts}:citylimit=false&key=b0884cd3cbddfe9f6c9dd0e8a7ed6569&keywords={city}&language=zh-CN&output=json'
    socde = USE_MD5(text)
    # print(socde)
    return socde


if __name__ == '__main__':
    get_prices()
    get_city('%E6%88%90%E9%83%BD')
    # print(USE_MD5('24b7e468611fc912f1f4ce22e9e8a463&1606487624&6ec9ed1e4106f9cb1ad874cfe5b81521&-371141155'))