# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/13
"""

import asyncio
from pyppeteer import launch

width, height = 1366, 768

async def main():
    browser = await launch(headless=False)
    page = await browser.newPage()
    await page.setViewport({'width':width,'height':height})
    await page.goto('https://dynamic2.scrape.cuiqingcai.com/')
    await page.waitForSelector('.item .name')
    await asyncio.sleep(2)
    await page.screenshot(path='example.png')
    dimensions = await page.evaluate("""() =>{
    return{
        width:document.documentElement.clientWidth,
        height:document.documentElement.clientHeight,
        deviceScaleFactor:window.devicePixelRatio,
        }
        }""") # 网页得宽高、像素大小、比率三个值
    print(dimensions)
    await browser.close()

asyncio.get_event_loop().run_until_complete(main())