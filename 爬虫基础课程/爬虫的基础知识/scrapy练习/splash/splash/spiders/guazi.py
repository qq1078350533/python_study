# -*- coding: utf-8 -*-
# 在设置里需要设置大量东西
import scrapy
from scrapy_splash import SplashRequest

class GuaziSpider(scrapy.Spider):
    name = 'guazi'
    allowed_domains = ['guazi.com']
    # start_urls = ['http://guazi.com/']

    def start_requests(self):
        url = 'https://www.guazi.com/loudi/buy/'
        yield SplashRequest(url,callback=self.parse,args={'wait':1})

    def parse(self, response):
        print(response.text)
