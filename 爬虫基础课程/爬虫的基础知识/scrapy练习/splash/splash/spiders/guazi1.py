# -*- coding: utf-8 -*-
# 在设置里需要设置大量东西
import scrapy
from scrapy_splash import SplashRequest

class GuaziSpider(scrapy.Spider):
    name = 'guazi1'
    allowed_domains = ['guazi.com']
    # start_urls = ['http://guazi.com/']

    def start_requests(self):
        lua = '''
  function main(splash, args)
    assert(splash:go(args.url))
    assert(splash:wait(1))
    return splash:html()
  end
'''
        url = 'https://www.guazi.com/loudi/buy/'
        # 更改模式
        yield SplashRequest(url,callback=self.parse,endpoint='execute',args={'lua_source':lua})

    def parse(self, response):
        print(response.text)
