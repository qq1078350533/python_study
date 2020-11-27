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


def persom():
    web_url = "http://127.0.0.1:5000/dy"
    response = requests.get(web_url).json()
    url = response["url"]
    data = json.loads(response["res"])
    gorgon = data["X-Gorgon"]
    khronos = data['X-Khronos']
    return url,gorgon, khronos


def get_res(lists):
    headers = {
        "Host": "aweme-eagle.snssdk.com",
        "Connection": "keep-alive",
        "Cookie": "install_id=3394909373733624; ttreq=1$3c993b978519b6e1c0b075a550087de3c5e86c23; odin_tt=98f8553e5be0b8d9652384f0b2351cca593d4a11a7ec78c37caaab10934919db5a0d9e516df94db4b28fdac7216aa5493e0d6e83b94f563163fab5ffde854e16; qh[360]=1",
        "Accept-Encoding": "gzip",
        "sdk-version": "1",
        "User-Agent": "com.ss.android.ugc.aweme/670 (Linux; U; Android 5.1; zh_CN; Nexus 6; Build/LMY47I; Cronet/58.0.2991.0)",
        "X-Gorgon": lists[1],
        "X-Khronos": lists[2],
        "X-Pods": "",
    }
    response = requests.get(lists[0], headers=headers, verify=False)
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
    while True:
        lists = persom()
        text = get_res(lists)
        items = get_date(text)
        # get_mongdb(items)
        get_mysql(items)