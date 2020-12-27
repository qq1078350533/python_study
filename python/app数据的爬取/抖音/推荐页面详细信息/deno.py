#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: deno.py
@time: 2020/9/26 12:36
@desc: 
"""
import requests,time,json
import pymongo
from pymysql import *
# 普通版


def persom(url):
    web_url = "http://121.4.112.180:6081/dy/x_g"
    data = {"url": url}
    response = requests.post(web_url, data=data).json()
    x_g = response["X-Gorgon"]
    khronos = response['X-Khronos']
    print(x_g,khronos)
    return x_g, khronos


def get_res():
    ts = int(time.time())
    ts13 = int(time.time()*1000)
    url = "https://api3-core-c-lq.amemv.com/aweme/v2/feed/?type=0&max_cursor=0&min_cursor=0&count=6&pull_type=1" \
          "&need_relieve_aweme=0&filter_warn=0&is_cold_start=0&longitude=121.492479&latitude=31.247221&address_book_access=2&" \
          "gps_access=1&cached_item_num=0&last_ad_show_interval=-1&mac_address=a6%3A1a%3A85%3Ae0%3Aa5%3A2a&" \
          f"download_sdk_info=%7B%22space_unoccupied%22%3A6555580%7D&action_mask=-1&ts={ts}&_rticket={ts13}&mcc_mnc=46000&"
    v2 = "os_api=22&device_platform=android&device_type=G011C&iid=2444963526752767&version_code=100400&app_name=aweme&" \
         "openudid=3088d1878c5bc3af&device_id=1371797751605166&os_version=5.1.1&aid=1128&channel=tengxun_new&ssmix=a&" \
         "manifest_version_code=100401&dpi=192&cdid=9fe11d79-5806-4a80-be42-f95a24ad910a&version_name=10.4.0&" \
         "resolution=720*1280&language=zh&device_brand=google&app_type=normal&ac=wifi&update_version_code=10409900&uuid=865235319692220"
    x_g, khronos = persom(url+v2)
    headers = {
        'Host': 'api3-core-c-lq.amemv.com',
        'Connection': 'keep-alive',
        'Cookie': 'install_id=2444963526752767; ttreq=1$548c71d9588c20a414828f20abf7ad9fd098a173; odin_tt=13a0af4dc2522d474584b02103ee05dafe51896d7df6ab29fe559f5d435b8a8941f05c2bed505c465413a93e923c29bb877388bd51508a0f964cd48b6374f769',
        'X-SS-REQ-TICKET': f'{ts13}',
        'sdk-version': '1',
        'X-SS-DP': '1128',
        # 'x-tt-trace-id': '00-9e0b8cd10d4dfa48db027ae97b750468-9e0b8cd10d4dfa48-01',
        'User-Agent': 'com.ss.android.ugc.aweme/100401 (Linux; U; Android 5.1.1; zh_CN; G011C; Build/LMY48Z; Cronet/TTNetVersion:3154e555 2020-03-04 QuicVersion:8fc8a2f3 2020-03-02)',
        'Accept-Encoding': 'gzip, deflate',
        'X-Gorgon': x_g,
        'X-Khronos': f"{ts}",
        'x-common-params-v2': v2,
    }
    response = requests.get(url, headers=headers)
    print(response.text)
    return response.json()

def get_date(text):
    lists = text['aweme_list']
    items = []
    for i in lists:
        title = i['desc']   #视频标题
        user = i['author']["nickname"]   #用户名称
        music = i['music']['play_url']['uri']  #音乐
        comment_count = i['statistics']['comment_count']   #评论数
        digg_count = i['statistics']['digg_count']   # 点赞数
        userid = i['author_user_id']    #用户id
        item = {
            "title": title,
            "user": user,
            "music":music,
            "comment_count": comment_count,
            "digg_count":digg_count,
            "userid": userid,
        }
        items.append(item)
        print(item)
    return (items)

def get_mongdb(items):
    client = pymongo.MongoClient('mongodb://localhost:27017')
    db = client.douyin
    collection = db.tuijian
    collection.insert_many(items)
    print(items)

def get_mysql(items):

    db = connect(host='localhost', port=3306, user='root', password='snackdeng', charset='utf8', db="deng01")
    cursor = db.cursor()
    # SQL 插入语句
    sql = "INSERT INTO douyinVALUES (0, %s, %s, %s, %s, %s, %s)"
    try:
        # 执行sql语句
        for i in items:
            item_list = [i["title"],i["user"],i["music"],i["comment_count"],i["digg_count"],i["userid"]]
            cursor.execute(sql,item_list)
            # 提交到数据库执行
            db.commit()
    except:
        # Rollback in case there is any error
        print("存入失败")
        db.rollback()

    # 关闭数据库连接
    print("成功存入")
    db.close()


if __name__ == '__main__':
    # while True:
        # lists = persom()
        text = get_res()
        items = get_date(text)
        # get_mongdb(items)
        # get_mysql(items)