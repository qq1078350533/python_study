# -*- coding: utf-8 -*-
import scrapy


class BaiduSpider(scrapy.Spider):
    name = 'baidu'
    # allowed_domains = ['baidu.com']
    # start_urls = ['http://www.baidu.com/']

    def start_requests(self):
        while True:
            # dont_filter = True 取消去重
            yield scrapy.Request('http://www.baidu.com/',dont_filter=True,callback=self.parse)

    def parse(self, response):
        print(response.url)
