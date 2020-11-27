"""snackdeng"""
import requests
import os
import pymongo
from queue import Queue
import threading


def main():
    url = 'https://game.gtimg.cn/images/lol/act/img/js/heroList/hero_list.js'
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36"
    }
    response = requests.get(url=url, headers=headers).json()
    datas = response['hero']
    for data in datas:
        hero_id = data['heroId']
        hero_url = "https://game.gtimg.cn/images/lol/act/img/js/hero/{}.js".format(hero_id)
        hero_list_url.put(hero_url)


class HeroList(threading.Thread):
    def __init__(self, hero_list_url, image_list, *args, **kwargs):
        super(HeroList, self).__init__(*args, **kwargs)
        self.hero_list_url = hero_list_url
        self.image_list = image_list

    def run(self):
        while True:
            if self.hero_list_url.empty():
                break
            url = self.hero_list_url.get()
            self.get_page_start(url)

    def get_page_start(self, url):
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36"
        }
        response = requests.get(url=url, headers=headers).json()
        hero_name = response['hero']['name']
        hero_skins = response['skins']
        for hero_skin in hero_skins[1:]:
            item = {}
            data = []
            item['skin_name'] = hero_skin['name']
            item['image_url'] = hero_skin['mainImg']
            if item['image_url']:
                data.append(item)
                data.insert(0, hero_name)
                print("图片的url正在爬取", data)
                self.image_list.put(data)


class ImageList(threading.Thread):
    def __init__(self, hero_list_url, image_list, *args, **kwargs):
        super(ImageList, self).__init__(*args, **kwargs)
        self.hero_list_url = hero_list_url
        self.image_list = image_list

    def run(self):
        while True:
            if self.hero_list_url.empty() and self.image_list.empty():
                break
            data = self.image_list.get()
            self.write_file(data)

    def write_file(self, data):
        file = r'./英雄联盟皮肤壁纸/{}.jpg'.format(data[1]['skin_name'].replace("/", ''))
        response = requests.get(url=data[1]['image_url']).content
        with open(file, "wb") as f:
            f.write(response)
        print('写入成功')


if __name__ == '__main__':
    hero_list_url = Queue(200)
    image_list = Queue(10000)
    main()

    # 提取图片url线程的个数
    for i in range(5):
        t = HeroList(hero_list_url, image_list)
        t.start()

    # 下载的图片线程的个数
    for i in range(5):
        t = ImageList(hero_list_url, image_list)
        t.start()

    # mongdb_save(data)

# def mongdb_save(datas):
#     for data in datas:
#         item = {
#             '皮肤名字':data[0],
#             '皮肤地址':data[1]
#         }
#         client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')
#         db = client.lol
#         collection = db.lol_pifu
#         collection.insert(item)
#         client.close()
