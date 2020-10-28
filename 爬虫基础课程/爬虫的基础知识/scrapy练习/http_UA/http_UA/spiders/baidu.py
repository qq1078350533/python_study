# -*- coding: utf-8 -*-
import scrapy


class BaiduSpider(scrapy.Spider):
    name = 'baidu'
    allowed_domains = ['baidu.com']
    start_urls = ['http://www.baidu.com/']

    def parse(self, response):
        #response.url 获取当前网址  response.body 字符串式text response.text 。。。 response.status 是状态码200，300  response.requests 是当时请求的所以信息
        print(response.body)
