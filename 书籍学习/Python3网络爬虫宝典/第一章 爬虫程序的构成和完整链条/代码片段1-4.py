#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: 代码片段1-4.py
@time: 2020-11-04 23:26
@desc: 
"""

from datetime import datetime
import asyncio


async def wait():
    asyncio.sleep(5)
    print('等我5秒钟')


async def print_time(word):
    print(word, datetime.now().strftime("%Y-%m-%d %H:%M:%S"))


async def main():
    await print_time("开始")
    await wait()
    await print_time("结束")


loop = asyncio.get_event_loop()
loop.run_until_complete(main())
loop.close()
