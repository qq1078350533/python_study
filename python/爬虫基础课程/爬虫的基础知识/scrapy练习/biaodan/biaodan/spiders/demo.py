# -*- coding: utf-8 -*-
import scrapy
#  此项目是正常提交表单

class DemoSpider(scrapy.Spider):
    name = 'demo'
    allowed_domains = ['login.taobao.com']
    # start_urls = ['https://login.taobao.com/member/login.jhtml?redirectURL=https%3A%2F%2Fwww.taobao.com%2F']
    # 用post请求
    def start_requests(self):
        url = 'https://login.taobao.com/member/login.jhtml?redirectURL=https%3A%2F%2Fwww.taobao.com%2F'
        from_data = {
            "user":"1123",
            "password":"2114"
        }
        yield scrapy.FormRequest(url,formdata=from_data,callback=self.parse)

    def parse(self, response):
        print(response.text)
        # 登陆成功后，再次发起请求这里为get请求
        yield scrapy.Request('.....',callback=self.parse_info)
      
    # 登录之后来提取信息
    def parse_info(self,response):
        print(response.text)