# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/12
"""
import requests, threading
from lxml import etree
from queue import Queue
import time

class Spider(threading.Thread):
    def __init__(self,q):
        super(Spider, self).__init__()
        self.q = q

    def get_page(self):
        while True:
            num = self.q.get()
            print("正在取出的是",num)
            url = f"https://movie.douban.com/subject/{num}/?from=playing_poster"
            headers = {
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
                'Referer': 'https://movie.douban.com/cinema/nowplaying/changsha/'
            }
            response = requests.get(url, headers=headers)
            text = response.text
            html = etree.HTML(text)
            movies = []
            title = html.xpath('//*[@id="content"]/h1/span[1]/text()')[0]
            score = html.xpath(
                '//*[@id="interest_sectl"]/div[1]/div[2]/strong/text()')
            if len(score) == 0:
                score = "null"
            else:
                score = score[0]
            # duration = html.xpath('//*[@id="info"]/span[16]/text()')[0]  #时长
            # director = html.xpath('//*[@id="info"]/span[1]/span[2]/a/text()')[0] #导演
            # actors = html.xpath('//*[@id="info"]/span[3]/span[2]/span/text()')#主演
            # region = html.xpath("@data-region")[0]
            # thumbnail = html.xpath(".//img/@src")[0]
            movie = {
                "title": title,
                "score": score,
                # "duration":duration,
                # "dircector":director,
                # "actors":actors,
                # "region":region,
                # "thumbnail":thumbnail
            }
            movies.append(movie)
            print(movie)
            # 如果为空就返回false
            if self.q.empty():
                break

    def list_page(self):
        # 1.将目标网站上的页面抓取下来
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
            'Referer': 'https://movie.douban.com/'
        }
        url = 'https://movie.douban.com/cinema/nowplaying/changsha/'
        response = requests.get(url, headers=headers)
        text = response.text
        html = etree.HTML(text)
        id = html.xpath('//*[@id="nowplaying"]/div[2]/ul/li/@id')
        for i in id:
            print("正在存入的是", i)
            self.q.put(i)

    def run(self):
        self.get_page()



if __name__ == '__main__':
    start = time.time()
    q = Queue()
    threads = []
    Spider(q).list_page()
    # 创建线程
    for i in range(4):
        t = Spider(q)
        t.start()
        threads.append(t)

    # 让创建每一个线程都运行完毕
    for thread in threads:
        thread.join()
    finish = time.time()
    print("总耗时", finish - start) #总耗时 7.325180768966675


