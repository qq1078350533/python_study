# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/12
"""
import aiohttp
import asyncio

async def main():
    # params = {'name': 'germey','age':25}
    # async with aiohttp.ClientSession() as session:
    #     async with session.get('https://httpbin.org/get', params=params) as response:
    #         print(await response.text())

    # data = {'name': 'germey','age':25}
    # async with aiohttp.ClientSession() as session:
    #     async with session.post('https://httpbin.org/post', data=data) as response:
    #         print(await response.text())

    data = {'name': 'germey','age':25}
    async with aiohttp.ClientSession() as session:
        async with session.post('https://httpbin.org/post', json=data) as response:
            print(await response.text())


if __name__ == "__main__":
    # asyncio.get_event_loop().run_until_complete(main())
    asyncio.run(main())