import requests
import jsonpath
import time
import pymongo

client = pymongo.MongoClient('mongodb://admin:123456@192.168.86.128:27017')

headers = {}

max_id = "0"
page = 1
while True:

    url = f"https://api.weibo.cn/2/comments/build_comments?is_show_bulletin=2&c=android&from=10A9395010&count=200&max_id={max_id}&s=8f67a4f4&id=4584774314492510&gsid=_2A25y5dbyDeRxGeNG41IW9CnEzDyIHXVvs206rDV6PUJbkdANLUzGkWpNSwhjTgPJqpLlBg4wjaddP8pEX0T23WtU"

    response1 = requests.get(url=url,headers=headers)
    if response1.status_code != 200:
        break
    print("请求成功:{}".format(response1.status_code))
    response = response1.json()
    for i in response['root_comments']:
        name = i['user']['screen_name']
        id = i['user']['id']
        text = i['text']
        item1 = {
            "id" : id,
            "name" : name,
            "text" : text
        }
        client.weibo.pinglun.insert(item1)
    print(f"第{page}页写入成功")
    client.close()
    page += 1
    max_id = response['max_id']
    time.sleep(3)

