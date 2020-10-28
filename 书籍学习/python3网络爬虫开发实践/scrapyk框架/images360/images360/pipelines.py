# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymongo
from pymysql import connect
from scrapy import Request
from scrapy.exceptions import DropItem
from scrapy.pipelines.images import ImagesPipeline


class ImagePipeline(ImagesPipeline):
    def file_path(self, request, response=None, info=None):
        """此处的request为请求图片的request对象，利用url的最后分解来作为文件的名字"""
        url = request.url
        file_name = url.split('/')[-1]
        return file_name

    def item_completed(self, results, item, info):
        """results是下载结果;
        它是一个列表形式，列表每一个元素是一个元组，其巾包含了下载成功或失败的信息。这里我们遍历下载结果找出所有成功的下载列表，如果列表为空，那么该 Item 对应的图片下载失败，随即抛出异常DropItem，该Item 忽略 则返回 Item"""
        image_paths = [x["path"] for ok, x in results if ok]
        if not image_paths:
            raise DropItem('Image Downloaded Failed')
        return item

    def get_media_requests(self, item, info):
        yield Request(item['url'])


class MongoPipeline(object):
    def __init__(self, mongo_uri, mongo_db):
        self.mongo_uri = mongo_uri
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        """为了获取setting中的mong_url和mongo_db"""
        return cls(
            mongo_uri=crawler.settings.get('MONGO_URI'),
            mongo_db=crawler.settings.get('MONGO_DB')
        )

    def open_spider(self, spider):
        a = 'mongodb://admin:snackdeng@{}:27017'.format(self.mongo_uri)
        self.client = pymongo.MongoClient()
        self.db = self.client[self.mongo_db]

    def process_item(self, item, spider):
        # 设置数据库表名，此处为item文件的类名
        name = item.collection
        self.db[name].insert(dict(item))
        return item

    def close_spider(self, spider):
        self.client.close()


class MysqlPipeline():
    # def __init__(self, host, database, user, password, port):
    #     self.host = host
    #     self.database = database
    #     self.user = user
    #     self.password = password
    #     self.port = port
    #
    # @classmethod
    # def from_crawler(cls, crawler):
    #     return cls(
    #         host=crawler.settings.get('MYSQL_HOST'),
    #         database=crawler.settings.get('MYSQL_DATABASE'),
    #         user=crawler.settings.get('MYSQL_USER'),
    #         password=crawler.settings.get('MYSQL_PASSWORD'),
    #         port=crawler.settings.get('MYSQL_PORT'),
    #     )

    def open_spider(self, spider):
        # self.db = connect(self.host, self.user, self.password, self.database, charset='utf8',
        #                           port=self.port)
        self.db = connect(host='localhost', user='root', password='snackdeng', port=3306, db='room', charset='utf8')
        self.cursor = self.db.cursor()

    def process_item(self, item, spider):
        print(item['title'])
        data = dict(item)
        keys = ', '.join(data.keys())
        values = ', '.join(['%s'] * len(data))
        sql = 'insert into %s (%s) values (%s)' % (item.table, keys, values)
        self.cursor.execute(sql, tuple(data.values()))
        self.db.commit()
        return item

    def close_spider(self, spider):
        self.cursor.close()
        self.db.close()



# class MysqlPipeline(object):
#     def __init__(self, host, database, user, password, port):
#         self.host = host
#         self.database = database
#         self.user = user
#         self.password = password
#         self.port = port
#
#     @classmethod
#     def from_crawler(cls, crawler):
#         """为了获取setting中的mong_url和mongo_db"""
#         return cls(
#             host=crawler.settings.get('MYSQL_HOST'),
#             database=crawler.settings.get('MYSQL_DATABASE'),
#             user=crawler.settings.get('MYSQL_USER'),
#             password=crawler.settings.get('MYSQL_PASSWORD'),
#             port=crawler.settings.get('MYSQL_PORT')
#         )
#
#     def open_spider(self, spider):
#         self.db = pymysql.connect(host={1}, user={2}, password={3}, port={4}, db={5}, charset='utf8').format(self.host, self.user, self.password, self.port, self.database)
#         self.cursor = self.db.cursor()
#
#     def close_spider(self, spider):
#         self.db.close()
#
#     def process_item(self, item, spider):
#         print(item['title'])
#         data = dict(item)
#         keys = ','.join(data.keys())
#         values = ','.join(['%s'] * len(data))
#         sql = 'insert into {0} ({1}) values ({2})'.format(item.table, keys, values)
#         self.cursor.execute(sql, tuple(data.values()))
#         self.db.commit()
#         return item