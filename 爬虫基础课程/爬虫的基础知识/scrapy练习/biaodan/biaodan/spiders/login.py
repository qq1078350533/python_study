# -*- coding: utf-8 -*-
import scrapy
# 此项目是携带cookie直接登录，不需要提供表单

class LoginSpider(scrapy.Spider):
    name = 'login'
    allowed_domains = ['sxt.cn']
    start_urls = ['https://www.sxt.cn/index/user.html']

    def start_requests(self):
        # 因为cookie_str是字符串，即转化为字典
        cookie_str = ''
        cokkies = {}
        for cookie in cookie_str.split(";"):
            key,value = cookie.split('=',1)
            cookie[key.strip()] = value.strip()
        # cookie可以是列表或者字典
        yield scrapy.Request('......',cookies=cokkies,callback=self.parse)

    def parse(self, response):
        print(response.text)
