import requests
from lxml import etree
import json

class BaiduTieba():
    def __init__(self, tieba_name):
        self.tieba_name = tieba_name
        self.start_url = 'https://tieba.baidu.com/f?kw={}&pn=0'.format(self.tieba_name)
        self.headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36'}
        self.part_url = 'https://tieba.baidu.com/'

    def parse_url(self, url):
        print(url)
        response = requests.get(url, headers=self.headers)
        return response.text

    def parse_one(self, html):
        xml = etree.HTML(html)
        li_list = xml.xpath('//ul[@id="thread_list"]/li')
        data = []
        for li in li_list:
            item = {}
            item['title'] = li.xpath('.//div[@class="threadlist_title pull_left j_th_tit "]/a/text()')
            item['href'] = self.part_url + li.xpath('.//div[@class="threadlist_title pull_left j_th_tit "]/a/@href')
            item['image_list'] = self.parse_two(item['href'], [])
            data.append(item)
        next_url = "https:" + xml.xpath('//a[text()="下一页>"]/@href') if xml.xpath('//a[text()="下一页>"]/@href') else None
        print(data)
        return data, next_url

    def parse_two(self, href, finalm_list):
        # 3.2请求列表页的url，提取下一页的地址
        html = self.parse_url(href)
        xml = etree.HTML(html)
        # 3.3提取详情页第一页的图片，提取下一页的地址
        image_list = xml.xpath('//img[@class="BDE_Image"]/@src')
        finalm_list.extend(image_list)
        # 3.4请求详情页下一页的地址，进入循环3.2-3.4
        next_url = xml.xpath('//a[text()="下一页"]/@href')[0]
        if next_url:
            url = self.part_url + next_url
            return self.parse_two(url, finalm_list)
        return finalm_list

    def save_file(self, data):
        file_path = './{}.txt'.format(self.tieba_name)
        with open(file_path, 'a') as f:
            f.write(json.dumps(data, ensure_ascii=False, indent=2))
            f.write('/n')
    def run(self):
        """主体函数"""
        next_url = self.start_url
        #1.start_url
        while next_url:
            #2.发送请求，获取回应
            html = self.parse_url(next_url)
            #3.提取数据，获取下一页的url地址
            data, next_url = self.parse_one(html)
                #3.1提取列表页的url地址和标题
                #3.2请求列表页的url，提取下一页的地址
                # 3.3提取详情页第一页的图片，提取下一页的地址
                # 3.4请求详情页下一页的地址，进入循环3.2-3.4
            self.save_file(data)


if __name__ == '__main__':
    tieba_spider = BaiduTieba('猫')
    tieba_spider.run()