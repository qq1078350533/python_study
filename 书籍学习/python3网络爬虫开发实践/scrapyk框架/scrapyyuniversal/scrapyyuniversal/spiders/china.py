# -*- coding: utf-8 -*-
import scrapy
from scrapy.linkextractors import LinkExtractor
from scrapy.spiders import CrawlSpider, Rule
from scrapyyuniversal.items import ScrapyyuniversalItem

class ChinaSpider(CrawlSpider):
    name = 'china'
    allowed_domains = ['tech.china.com']
    start_urls = ['https://tech.china.com/articles/']

    rules = (
        Rule(LinkExtractor(allow=r'article\/.*\.html/', restrict_xpaths='//div[@class="bd defList"]//h3[@class="tit"]'), callback='parse_item'),
        Rule(LinkExtractor(restrict_xpaths='//div[@class="pages"]//a[@class="a1"]'))
    )

    def parse_item(self, response):
        item = ScrapyyuniversalItem()
        item['title'] = response.xpath('//h1[@id="chan_newsTitle"]/text()').extract_first()
        item['url'] = response.url
        item['text'] = ''.join(response.xpath('//div[@id="chan_newsDetail"]//text()').extarct()).strip()
        item['datetime'] = response.xpath('//div[@class="chan_newsInfo_source"]/span[@class="time"]/text()').extract_first()
        item['source'] = response.xpath('//div[@class="chan_newsInfo_source"]/span[@class="source"]/text()').re_first('来源：(.*)').strip()
        item['website'] = "中华网"
        yield item