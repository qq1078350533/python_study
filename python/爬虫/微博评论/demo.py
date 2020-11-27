import requests
import jsonpath
import time
import pymongo

client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')

headers = {
            "accept-language": "zh-CN,zh;q=0.9",
            "user-agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Mobile Safari/537.36",
            "referer": "https://m.weibo.cn/detail/4485613145089303",
            "cookie": "WEIBOCN_FROM=1110005030; SUB=_2A25zeaLSDeRhGeNG41IW9CnEzDyIHXVQhc6arDV6PUJbkdAKLWnskW1NSwhjThESwIEYhgr4VhduwRl_bJaHXlPQ; SUHB=0mxkC0BeDArx0U; _T_WM=87866313336; MLOGIN=1; XSRF-TOKEN=882a81; M_WEIBOCN_PARAMS=oid%3D4485613145089303%26luicode%3D20000061%26lfid%3D4485613145089303"
        }

max_id = ""
while True:
    if max_id == "":
        url = "https://m.weibo.cn/comments/hotflow?id=4485613145089303&mid=4485613145089303&max_id_type=0"
    else:
        url = "https://m.weibo.cn/comments/hotflow?id=4485613145089303&mid=4485613145089303&max_id={}&max_id_type=0".format(max_id)

    response1 = requests.get(url=url,headers=headers)
    if response1.status_code != 200:
        break
    print("请求成功:{}".format(response1.status_code))
    response = response1.json()
    names = jsonpath.jsonpath(response,"$..screen_name")
    ids = jsonpath.jsonpath(response,"$..user.id")
    max_id = jsonpath.jsonpath(response, "$..max_id")[0]
    print("请求的是:{}".format(max_id))
    texts = jsonpath.jsonpath(response,"$..text")
    textss = []
    for i in texts:
        a = i.split("<",1)[0]
        textss.append(a)
    for id,name,text in zip(ids,names,textss):
        item1 = {
            "id" : id,
            "name" : name,
            "text" : text
        }
        client.weibo.pinglun.insert(item1)
    print("写入成功")
    client.close()
    time.sleep(3)

