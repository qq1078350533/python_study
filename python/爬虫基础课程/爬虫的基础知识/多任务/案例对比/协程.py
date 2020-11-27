# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/08/13
"""

import asyncio
import requests
from lxml import etree
from queue import Queue
import time
import aiohttp



async def list_page(q):
    # 1.将目标网站上的页面抓取下来
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
        'Referer': 'https://movie.douban.com/'
    }
    url = 'https://movie.douban.com/cinema/nowplaying/changsha/'
    async with aiohttp.ClientSession() as session:
        async with session.get(url,headers=headers) as resp:
            text = await resp.text
            html = etree.HTML(text)
            id = html.xpath('//*[@id="nowplaying"]/div[2]/ul/li/@id')
            for i in id:
                print("正在存入的是",i)
                q.put(i)



async def get_page(q):
    while True:
        num = q.get()
        print("正在取出的是",num)
        url = f"https://movie.douban.com/subject/{num}/?from=playing_poster"
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
            'Referer': 'https://movie.douban.com/cinema/nowplaying/changsha/'
        }
        async with aiohttp.ClientSession() as session:
            async with session.get(url, headers=headers) as resp:
                text = await resp.text
                html = etree.HTML(text)
                movies = []
                title = html.xpath('//*[@id="content"]/h1/span[1]/text()')[0]
                score = html.xpath(
                    '//*[@id="interest_sectl"]/div[1]/div[2]/strong/text()')
                if len(score) == 0:
                    score = "null"
                else:
                    score = score[0]
                movie = {
                    "title": title,
                    "score": score,
                }
                movies.append(movie)
                print(movie)
                # 如果为空就返回false
                if q.empty():
                    break


def main():
    start = time.time()
    q = Queue()
    threads = []
    t1 = threading.Thread(target=list_page, args=(q,))  # 默认传入的是元组需要加个，
    t1.start()

    # 创建线程
    for i in range(4):
        t= threading.Thread(target=get_page, args=(q,))
        t.start()
        threads.append(t)

    # 让创建每一个线程都运行完毕
    for thread in threads:
        thread.join()
    finish = time.time()
    print("总耗时",finish - start)
    # 总耗时

if __name__ == '__main__':
    main()

