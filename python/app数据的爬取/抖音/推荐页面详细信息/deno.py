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
    url = "https://aweme.snssdk.com/aweme/v2/feed/?type=0&max_cursor=0&min_cursor=0&count=6&volume=0.73&pull_type=4&" \
          "need_relieve_aweme=0&filter_warn=0&req_from=enter_auto&is_cold_start=1&longitude=0&latitude=0&address_book_access=2&" \
          "gps_access=1&cached_item_num=0&last_ad_show_interval=-1&preload_aweme_ids&" \
          "download_sdk_info=%7B%22space_unoccupied%22%3A15401468%7D&action_mask=-1&os_api=22&device_type=PCT-AL10&" \
          "device_platform=android&ssmix=a&manifest_version_code=110101&dpi=480&version_code=110100&app_name=aweme&" \
          f"cdid=8cbdc9ae-4fdf-400f-952a-a157826fefba&version_name=11.1.0&ts={ts}&cpu_support64=false&resolution=1080*1920" \
          f"&os_version=5.1.1&language=zh&device_brand=HUAWEI&app_type=normal&ac=wifi&host_abi=armeabi-v7a&" \
          f"update_version_code=11109900&aid=1128&channel=tengxun_new&_rticket={ts13}&mcc_mnc=46000"
    x_g, khronos = persom(url)
    headers = {
        'Accept-Encoding': 'gzip',
        'X-SS-REQ-TICKET': f'{ts13}',
        'sdk-version': '1',
        'X-Gorgon': x_g,
        'X-Khronos': f'{khronos}',
        'Host': 'aweme.snssdk.com',
        'Connection': 'Keep-Alive',
        'User-Agent': 'okhttp/3.10.0.1',
    }
    response = requests.get(url, headers=headers)
    print(response.text)
    # return response.json()


def near():
    ts = int(time.time())
    ts13 = int(time.time() * 1000)
    url = f"https://aweme.snssdk.com/aweme/v1/nearby/feed/?max_cursor=0&min_cursor=0&count=20&feed_style=1&filter_warn=0&city=430100&latitude&longitude&poi_class_code=0&pull_type=1&location_permission=1&nearby_distance=0&roam_city_name&insert_fresh_aweme_ids&insert_fresh_type=0&os_api=22&device_type=PCT-AL10&ssmix=a&manifest_version_code=110101&dpi=480&uuid=865166023858478&app_name=aweme&version_name=11.1.0&ts={ts}&cpu_support64=false&app_type=normal&ac=wifi&host_abi=armeabi-v7a&update_version_code=11109900&channel=tengxun_new&_rticket={ts13}&device_platform=android&iid=2779221194717127&version_code=110100&cdid=8cbdc9ae-4fdf-400f-952a-a157826fefba&openudid=c10e8fb00589a8c4&device_id=66067276680&resolution=1080*1920&os_version=5.1.1&language=zh&device_brand=HUAWEI&aid=1128&mcc_mnc=46000"
    x_g, khronos = persom(url)
    headers = {
        'Accept-Encoding': 'gzip',
        'X-SS-REQ-TICKET': f'{ts13}',
        'sdk-version': '1',
        'X-Gorgon': x_g,
        'X-Khronos': f'{khronos}',
        'Host': 'aweme.snssdk.com',
        'Connection': 'Keep-Alive',
        'User-Agent': 'okhttp/3.10.0.1',
    }
    response = requests.get(url, headers=headers)
    print(response.text)

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
        # text = get_res()
        near()
        # items = get_date(text)
        # get_mongdb(items)
        # get_mysql(items)