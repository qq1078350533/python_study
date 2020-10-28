#导入库
import requests
import time
from lxml import etree
import random

headers = {'user-agent':'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'}

#1.确定url地址
url = 'https://music.163.com/playlist?id=751617169'
#5.拿到外联26
base_url = 'https://link.hhtjim.com/163/'



#2.请求
result = requests.get(url,headers = headers).text
#print(result)

#3.删选数据
dom = etree.HTML(result)
ids = dom.xpath('//a[contains(@href,"song?id=")]/@href')
music_name = dom.xpath('//a[contains(@href,"song?id=")]/text()')
#print(ids)

#4.遍历
for song_id in ids:
    #过滤切割
    count_id = song_id.strip('/song?id=')
    #print(count_id)

    # 过滤含有$玩意
    if ('$' in count_id) == False:
        time.sleep(1)
        song_url = base_url + '{}'.format(count_id) + '.mp3'
        song_name = song_url.split('/')[-1]
        print(song_url)

        result = requests.get(song_url).content

        with open("./WangYiYun/{}.mp3".format(song_name), "wb") as f:
                f.write(result)

