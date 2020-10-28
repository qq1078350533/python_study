import asyncio
from pyppeteer import launch

async def main():
    # 初始化对象
    browser = await launch()
    page = await browser.newPage()
    # 访问指定url
    await page.goto("http://example.com")
    # 打开网址后进行截图并保存在当前路径
    await page.screenshot({'path': 'example.png'})
    # 关闭浏览器
    await browser.close()

asyncio.get_event_loop().run_until_complete(main())