# -*- coding: utf-8 -*-
import scrapy
from scrapyseleniumtest.items import ScrapyseleniumtestItem
from urllib.parse import quote


class TaobaoSpider(scrapy.Spider):
    name = 'taobao'
    allowed_domains = ['www.taobao.com']
    base_urls = 'https://s.taobao.com/search?q='

    def start_requests(self):
        for keyword in self.settings.get('KEYWORDS'):
            for page in range(1, self.settings.get('MAX_PAGE') + 1):
                # 转码 将中文转换为url编码
                url = self.base_urls + quote(keyword)
                # 设置dont——filter不去重
                yield scrapy.Request(url=url, callback=self.parsr, meta={"page":page}, dont_filter=True)


    def parse(self, response):
        """
        正常解析，此处response是通过下载中间件返回回来的selenium通过渲染的网页源码代码
        :param response:
        :return:
        """
