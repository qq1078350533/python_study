# -*- coding: utf-8 -*-
# @Time : 2020-12-22 17:44 
# @Author : Snackdeng


import requests
import jsonpath
import time
import pymongo
from lxml import etree

client = pymongo.MongoClient('mongodb://admin:123456@192.168.86.128:27017')


max_id = f"id=4584627035972179&from=singleWeiBo&__rnd={int(time.time())*1000}"
page = 1
while True:
    ts13 = int(time.time())*1000
    url = f"https://weibo.com/aj/v6/comment/big?ajwvr=6&{max_id}&from=singleWeiBo&__rnd={ts13}"
    headers = {
        'cookie': 'SUB=_2AkMomDuxf8NxqwJRmP4QzGzra4V-zQrEieKexMpqJRMxHRl-yT9jqmcytRB6AxgVXh1yGFRctq5eJdi7kLvTmgoIPmpC;',
    }

    response1 = requests.get(url=url,headers=headers)
    if response1.status_code != 200:
        break
    print("请求成功:{}".format(response1.status_code))
    response = response1.json()['data']['html']
    html = etree.HTML(response)
    msgs = html.xpath("//div[@node-type='root_comment']")

    for i in msgs:
        name = i.xpath("./div[2]/div[1]/a[1]/text()")[0]
        id = i.xpath("./div[2]/div[1]/a[1]/@usercard")[0]
        text = ''.join(i.xpath("./div[2]/div[1]/text()")).strip('\n ')
        item1 = {
            "id" : id,
            "name" : name,
            "text" : text
        }
        print(item1)
        client.weibo.pinglun.insert(item1)
    try:
        max_id = html.xpath('//div[@node-type="comment_loading"]/@action-data')[0]
    except:
        max_id = html.xpath('//a[@action-type="click_more_comment"]/@action-data')[0]
    print(f"第{page}页写入成功")
    client.close()
    page += 1

    time.sleep(3)



''''

id=4584627035972179&root_comment_max_id=140497684788216&root_comment_max_id_type=0&root_comment_ext_param=&page=2&filter=hot&sum_comment_number=291&filter_tips_before=0
id=4584627035972179&root_comment_max_id=140497684788216&root_comment_max_id_type=0&root_comment_ext_param=&page=2&filter=hot&sum_comment_number=291&filter_tips_before=0&from=singleWeiBo&__rnd=1608631135792
'''