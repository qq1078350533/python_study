import requests
import jsonpath
import time
import pymongo

client = pymongo.MongoClient('mongodb://admin:123456@192.168.86.128:27017')

headers = {
            "X-Sessionid": "1f916240-29b0-4d85-b7fa-056cad7f5e52",
            "Authorization": "WB-SUT _2A95y5dbyDeRxGeNG41IW9CnEzDyIHXVvs206rDV6PUJbkdANLUb5kWpNSwhjTmhyfM7-l8kfbCvSIuDOS1fzpu-o",
            "accept-language": "zh-CN,zh;q=0.9",
            "user-agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Mobile Safari/537.36",
            "referer": "https://m.weibo.cn/detail/4485613145089303",
            "cookie": "WEIBOCN_FROM=1110005030; SUB=_2A25zeaLSDeRhGeNG41IW9CnEzDyIHXVQhc6arDV6PUJbkdAKLWnskW1NSwhjThESwIEYhgr4VhduwRl_bJaHXlPQ; SUHB=0mxkC0BeDArx0U; _T_WM=87866313336; MLOGIN=1; XSRF-TOKEN=882a81; M_WEIBOCN_PARAMS=oid%3D4485613145089303%26luicode%3D20000061%26lfid%3D4485613145089303"
        }

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

