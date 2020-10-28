from threading import Thread
from queue import Queue
from fake_useragent import UserAgent
from lxml import etree
import requests

# 创建爬虫类
class Spider(Thread):
    def __init__(self,url_queue,html_queue):
        Thread.__init__(self)
        self.url_queue = url_queue
        self.html_queue = html_queue

    def run(self):
        headers = {
            'User-Agent':UserAgent().random
        }
        # 判断url_queue容器是否有内容
        while self.url_queue.empty() == False:
            response = requests.get(self.url_queue.get(),headers=headers)
            if response.status_code == 200:
                self.html_queue.put(response.text)

# 解析类
class ParseInfo(Thread):
    def __init__(self,html_queue):
        Thread.__init__(self)
        self.html_queue = html_queue

    def run(self):
        while self.html_queue.empty() == False:
            e = etree.HTML(self.html_queue.get())
            titles = e.xpath('//dd/a[@rel="nofollow"]/text()')
            print(len(titles))
            for title in titles:
                print(title)


if __name__ == '__main__':
    # 存储url的容器
    url_queue = Queue()
    # 存储内容的容器
    html_queue = Queue()
    base_url = 'http://bj.ganji.com/ershoufang/pn{}/'
    for i in range(3,4):
        new_url = base_url.format(i)
        print(new_url)
        url_queue.put(new_url)

    spiser_list = []
    # 创建3个爬虫类线程
    for i in range(0,3):
        spider1 = Spider(url_queue,html_queue)
        spiser_list.append(spider1)
        spider1.start()

    for spider in spiser_list:
        spider.join()

    # 创建3个解析类线程
    parse_list = []
    for i in range(0,3):
        parse = ParseInfo(html_queue)
        parse_list.append(parse)
        parse.start()

    for parse in parse_list:
        parse.join()
