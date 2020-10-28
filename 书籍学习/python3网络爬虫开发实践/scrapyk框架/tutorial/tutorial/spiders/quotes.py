# -*- coding: utf-8 -*-
import scrapy
from tutorial.items import TutorialItem


class QuotesSpider(scrapy.Spider):
    name = 'quotes'
    allowed_domains = ['quotes.toscrape.com']
    start_urls = ['http://quotes.toscrape.com/']

    def parse(self, response):
        # quotes = response.css('.quote')
        quotes = response.xpath('//div[@class="quote"]')
        for quote in quotes:
            item = TutorialItem()
            # text = quote.css('.text::text').extract_first()
            item['text'] = quote.xpath('./span[@class="text"]//text()').extract_first()
            # author = quote.css('.author::text').extract_first()
            item['author'] = quote.xpath('.//small[@class="author"]//text()').extract_first()
            # tags = quote.css('.tags .tag::text').extract()
            item['tags'] = quote.xpath('./div[@class="tags"]//a/text()').extract()
            yield item

        # next = response.css('.pager .next a::attr(href)').extract_first()
        next = response.xpath('//li[@class="next"]/a/@href').extract_first()
        url = response.urljoin(next)
        yield scrapy.Request(url=url, callback=self.parse)