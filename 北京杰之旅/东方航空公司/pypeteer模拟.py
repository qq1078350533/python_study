from pyppeteer import launch
import time
from pyppeteer.errors import TimeoutError
import asyncio

HEADLESS = False

INDEX_URL = 'http://www.ceair.com/booking/aicn-sha-201031_CNY.html?seriesid=a2a403f0af6f11eaacdca54629eb66ff'
TIMEOUT = 10
WINDOW_WIDTH, WINDOW_HEIGHT = 1336, 768
HEADLESS = True
browser, tab = None, None
RESULTS_DIR = 'results'


async def init():
    global browser, tab
    browser = await launch(headless=HEADLESS,
                           args=['--disable-infobars',
                                 f'--window-size={WINDOW_WIDTH},{WINDOW_HEIGHT}'])
    tab = await browser.newPage()
    await tab.setViewport({'width': WINDOW_WIDTH, 'height': WINDOW_HEIGHT})


async def scrape_page(url, selector):
    await tab.goto(url)
    await tab.waitForSelector(selector, options={
        'timeout': TIMEOUT * 1000
    })
    airline_company =await tab.xpath('//article//div[@class="title"]/span[1]/text()')
    commpany = await tab.xpath('//article//div[@class="title"]/text()')
    Sailing_way = await tab.xpath('//article//div[@class="title"]/span[2]/text()')
    time = await tab.xpath('//article//div[@class="info clearfix"]//time/text()')
    Economy_class = await tab.xpath('//article//dd[@name="lowest"][1]/text()')
    first_class = await tab.xpath('//article//dd[@name="lowest"][3]/text()')
    fly_time = await tab.xpath('//article//section[@class="summary"]/dfn/text()')
    print(airline_company, commpany)
    # categories = await tab.querySelectorAllEval('.categories button span',
    #                                             'nodes=>nodes.map(node=>node.innerText)')
    # cover = await tab.querySelectorEval('.cover', 'node=>node.src')
    # score = await tab.querySelectorEval('.score', 'node=>node.innerText')
    # drama = await tab.querySelectorEval('.drama p', 'node=>node.innerText')
    time.sleep(10)


async def main():
    await init()
    await scrape_page(INDEX_URL, 'section')


if __name__ == '__main__':
    asyncio.get_event_loop().run_until_complete(main())
# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/16
"""