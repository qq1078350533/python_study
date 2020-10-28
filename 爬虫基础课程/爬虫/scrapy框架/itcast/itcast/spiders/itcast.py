# -*- coding: utf-8 -*-
import scrapy
from itcast.items import ItcastItem

class ItcastSpider(scrapy.Spider):
    # 爬虫名，启动爬虫时需要的的参数 必须
    name = 'itcast'
    # 爬取域范围，允许爬虫在这个域名下进行爬取  可选
    allowed_domains = ['http://www.itcast.cn']
    # 起始url列表，爬虫执行后第一批请求，将从这个列表获取 必选
    start_urls = ['http://www.itcast.cn/channel/teacher.shtml']

    def parse(self, response):
        # 创建item字段，用来存储信息
        item = ItcastItem()
        node_list = response.xpath('//div[@class="li_txt"]')
        # 用来存储所有的item字段的
        # items = []
        for node in node_list:
            # .extract()将xpath对象转换为unicode字符串
            # xpath返回的是一个列表，需要索引来提出括号里面的元素
            name = node.xpath('./h3/text()').extract()[0]
            title = node.xpath('./h4/text()').extract()[0]
            info = node.xpath('./p/text()').extract()[0]
            item = {
                'name':name,
                'title':title,
                'info':info
            }
            #返回提取到的每个item数据，给管道文件处理，同时还回来继续执行后面的代码
            yield item
        # return items
