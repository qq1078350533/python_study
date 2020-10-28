# -*- coding: utf-8 -*-
import scrapy


class BaidutupianSpider(scrapy.Spider):
    name = 'baidutupian'
    allowed_domains = [''image.baidu.com'']
    start_urls = ['http://'image.baidu.com'/']

    def parse(self, response):
        pass
