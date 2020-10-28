# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/12
"""
import asyncio
import aiohttp
import logging
import json
from motor.motor_asyncio import AsyncIOMotorClient


# 基本配置
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(levelname)s: %(message)s')
INDEX_URL = 'https://dynamic5.scrape.cuiqingcai.com/api/book/?limit=18&offset={offset}'
DETAL_URL = 'https://dynamic5.scrape.cuiqingcai.com/api/book/{id}'
PAGE_SIZE = 18
PAGE_NUMBER = 100
CONCURRENCY = 5
semaphore = asyncio.Semaphore(CONCURRENCY)
session = None
MONGO_CONNECTION_STRING = "mongodb://root:snackdeng@localhost:27017"
MONGO_DB_NAME = 'books'
MONGO_COLLECTION_NAME = 'books'
client = AsyncIOMotorClient(MONGO_CONNECTION_STRING)
db = client[MONGO_DB_NAME]
collection = db[MONGO_COLLECTION_NAME]


# 爬取列表页
async def scrape_api(url):
    async with semaphore:
        try:
            logging.info('scraping %s', url)
            async with session.get(url) as response:
                return await response.json()
        except aiohttp.ClientError:
            logging.error('error occurred while scraping %s', url, exc_info=True)


async def scrape_index(page):
    url = INDEX_URL.format(offset=PAGE_SIZE*(page-1))
    return await scrape_api(url)


async def scrape_detail(id):
    url = DETAL_URL.format(id=id)
    data = await scrape_api(url)
    await save_data(data)


async def save_data(data):
    logging.info('saving data %s', data)
    if data:
        return await collection.update_one({
            "id":data.get('id')
        },{
            "$set": data
        }, upsert=True)


async def main():
    global session
    session = aiohttp.ClientSession()
    scrape_index_tasks = [asyncio.ensure_future(scrape_index(page)) for page in range(1, PAGE_NUMBER + 1)]
    results = await asyncio.gather(*scrape_index_tasks)
    ids = []
    for index_data in results:
        if not index_data:continue
        for item in index_data.get('results'):
            ids.append(item.get('id'))
    logging.info('results %s', json.dumps(results, ensure_ascii=False, indent=2))
    scrape_datail_tasks = [asyncio.ensure_future(scrape_detail(id)) for id in ids]
    await asyncio.wait(scrape_datail_tasks)
    await session.close()


if __name__ == "__main__":
    asyncio.get_event_loop().run_until_complete(main())