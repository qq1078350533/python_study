# -*- coding: utf-8 -*-
# @Time : 2020-11-24 19:06 
# @Author : Snackdeng


import cv2
import base64
import asyncio
from pyppeteer import launch

launch_args = {
    "headless": False,
    'executablePath': r"C:\Program Files\Google\Chrome\Application\chrome.exe",
    "args": [
        "--start-maximized",
        "--disable-infobars",
        "--log-level=3",
        "--enable-extensions",
        "--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36",
    ],
    "ignoreDefaultArgs": ['--enable-automation']  # 去除Chrome正受到自动测试软件的控制
}


# 获取屏幕尺寸
def screen_size():
    """使用tkinter获取屏幕大小"""
    import tkinter
    tk = tkinter.Tk()
    width = tk.winfo_screenwidth()
    height = tk.winfo_screenheight()
    tk.quit()
    return width, height


# 保存图片
async def save(filename, data):
    _, img = data.split(",")
    img = base64.b64decode(img)
    with open(filename, "wb") as f:
        f.write(img)


# 注入JS获取图片
async def get_decode_image(page):
    full_img = await page.evaluate("""() => { 
                return document.getElementsByClassName("geetest_canvas_slice geetest_absolute")[0].toDataURL("image/png")}
            """)
    await save(filename="fadebg.png", data=full_img)
    await asyncio.sleep(0.1)
    fade_img = await page.evaluate("""() => { 
                return document.getElementsByClassName("geetest_canvas_bg geetest_absolute")[0].toDataURL("image/png")}
            """)
    await save(filename="fullbg.png", data=fade_img)
    await asyncio.sleep(0.1)
    return 'ok'


async def main():
    # 最大化窗口
    width, height = screen_size()
    browser = await launch(**launch_args)
    [page] = await browser.pages()
    await page.setViewport(viewport={'width': width, 'height': height})
    await page.goto(url="https://www.geetest.com/demo/slide-bind.html")
    await asyncio.sleep(2)
    await page.waitForXPath('//*[@id="btn"]')
    elem = await page.xpath('//*[@id="btn"]')
    await elem[0].click()
    await asyncio.sleep(3)
    # 获取并保存图片
    ok = await get_decode_image(page)
    if ok:  # 成功保存验证图片
        await asyncio.sleep(0.1)
        # 滑动验证：获取要位置的距离
        move = await compute_gap(fadebg="fadebg.png", fullbg="fullbg.png")
        elem = await page.xpath('/html/body/div/div[2]/div[6]/div/div[1]/div[2]/div[2]')
        await elem[0].hover()
        await page.mouse.down()
        await page.waitFor(400)
        await page.mouse.move(int(page.mouse._x + move - 2), 450, {'steps': 35})
        await page.waitFor(800)
        await page.mouse.up()
    await page.waitFor(1000)
    await page.close()  # 关闭页面
    await browser.close()  # 关闭浏览器


# 获取滑块的大小
def fix_img(filename):
    #  1.为了更高的准确率，使用二值图像
    img = cv2.imread(filename)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    _, thresh = cv2.threshold(gray, 127, 255, cv2.THRESH_BINARY)
    # 2.将轮廓提取出来
    contours, _ = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
    # 3.用绿色(0, 255, 0)来画出最小的矩形框架
    x, y, w, h = cv2.boundingRect(contours[0])
    rect_x = x + w
    rect_y = y + h
    # print(x, y, rect_x, rect_y)  # x，y是矩阵左上点的坐标，w，h是矩阵的宽和高
    rect_img = cv2.rectangle(img, (x, y), (rect_x, rect_y), (0, 255, 0), 1)
    # 3.根据滑块的高度和宽度进行截图
    mixintu = rect_img[y:rect_y, x:rect_x]
    return mixintu


# 获取移动距离
async def compute_gap(fadebg, fullbg):
    # 1.对滑块进行图片处理
    tp_img = fix_img(fadebg)  # 裁掉透明部分，找出滑块的大小
    tp_pic = cv2.cvtColor(cv2.Canny(tp_img, 100, 200), cv2.COLOR_GRAY2BGR)
    # 2.对背景进行图片处理
    bg_pic = cv2.cvtColor(cv2.Canny(cv2.imread(fullbg), 100, 200), cv2.COLOR_GRAY2BGR)
    # 3.模板匹配matchTemplate
    res = cv2.matchTemplate(bg_pic, tp_pic, cv2.TM_CCOEFF_NORMED)
    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
    # print(min_val, max_val, min_loc, max_loc)  # 最小值，最大值，最小值的位置，最大值的位置
    return max_loc[0]  # 返回滑块移动距离/


if __name__ == '__main__':
    asyncio.get_event_loop().run_until_complete(main())