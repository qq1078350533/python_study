# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/12
"""
import asyncio
from pyppeteer import launch
from pyquery import PyQuery as pq
import time

width, height = 1366, 768

async def main():
    # 启动了浏览器 默认没有界面，加入headless=False就有了
    # args=['--disable-infobars'] 禁用自动化控制这个栏
    # 维持cookie信息 userDataDir='./userdata'
    browser = await launch(headless=False,userDataDir='./userdata', args=['--disable-infobars'])
    # 开启无痕模式
    context = await browser.createIncognitoBrowserContext()
    page = await browser.newPage()
    await page.setViewport({'width': width, 'height': height})

    # 如果要避过webdriver检测
    await page.evaluateOnNewDocument(
        'Object.defineProperty(navigator,"webdriver",{get:()=>undefined})')

    # 请求网址
    # await page.goto('https://dynamic2.scrape.cuiqingcai.com/')
    await page.goto('https://www.taobao.com')

    # # 等待这个节点加载出来
    # await page.waitForSelector('.item .name')
    # doc = pq(await page.content())
    # names = [item.text() for item in doc('.item .name').items()]
    # print('Names:', names)
    time.sleep(100)
    await browser.close()


asyncio.get_event_loop().run_until_complete(main())
