# -*- coding: utf-8 -*-
import scrapy
from scrapy import Spider, Request
from urllib.parse import urlencode
import json
from images360.items import ImageItem


class ImagesSpider(scrapy.Spider):
    name = 'images'
    allowed_domains = ['images.so.com']
    # start_urls = ['http://images.so.com/']


    def start_requests(self):
        data = {
            "ch": "photography",
            "listtype": "new",
            "temp": 1
        }
        base_url = "https://image.so.com/zjl?"
        for page in range(1, self.settings.get('MAX_PAGE') + 1):
            data['sn'] = page * 30
            params = urlencode(data)
            url = base_url + params
            yield Request(url, self.parse)

    def parse(self, response):
        result = json.loads(response.text)
        for image in result["list"]:
            item = ImageItem()
            item["id"] = image['id']
            item["url"] = image['qhimg_url']
            item["title"] = image['title']
            item["thumb"] = image['qhimg_thumb']
            yield item
