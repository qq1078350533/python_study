# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class ScrapyseleniumtestItem(scrapy.Item):
    # define the fields for your item here like:
    collection = 'products'
    image = scrapy.Field()
    price = scrapy.Field()
    deal = scrapy.Field()
    title = scrapy.Field()
    location = scrapy.Field()