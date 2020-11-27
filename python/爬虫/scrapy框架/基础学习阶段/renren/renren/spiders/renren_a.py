# -*- coding: utf-8 -*-
import scrapy


class RenrenASpider(scrapy.Spider):
    name = 'renren_a'
    allowed_domains = ['renren.com']
    start_urls = ['http://renren.com/']

    def start_requests(self):
        url = 'http://www.renren.com/973264438'
        data = {
            'email':'13348783892',
            'password':'yijiaren'
        }
        # 此请求为post请求
        request = scrapy.FormRequest(url,formdata=data,callback=self.parse_page)
        yield request

    def parse_page(self, response):
        with open(r'renren.html','wb',encoding='utf-8') as fp:
            fp.write(response.text)