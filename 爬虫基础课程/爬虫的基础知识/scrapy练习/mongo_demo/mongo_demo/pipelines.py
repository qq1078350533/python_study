# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymongo

class MongoDemoPipeline(object):
    def open_spider(self,spider):
        self.client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')

    def process_item(self, item, spider):
        # 找到豆瓣库，再找到movie集合，再插入数据
        self.client.douban.movie.insert_one(item)
        return item

    def close_spider(self,spider):
        self.client.close()
