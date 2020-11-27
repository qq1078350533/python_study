# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/19
"""

from selenium import webdriver
import time
from PIL import Image
from PIL import ImageChops

browser = webdriver.Chrome()
browser.get("http://www.porters.vip/captcha/jigsawCanvas.html")
# 定位滑块
jigsawCircle = browser.find_element_by_xpath('//span[@id="jigsawCircle"]')
# 定位背景图片
jigsawCanvas = browser.find_element_by_xpath('//canvas[@id="jigsawCanvas"]')
# 需要下拉滚动条才能把图片截全，不然会对比像素的时候错误  修改top值即可
js="var q=document.documentElement.scrollTop=100000"
browser.execute_script(js)
jigsawCanvas.screenshot('before.png')
action = webdriver.ActionChains(browser)
# 点击并保持不松开
action.click_and_hold(jigsawCircle).perform()
# 执行JAVAScript隐藏圆角得html代码
scripts = """
var missblock = document.getElementById('missblock');
missblock.style['visibility'] = 'hidden'
"""
browser.execute_script(scripts)
# 截图
# time.sleep(1)
jigsawCanvas.screenshot('after.png')
# 打开对比得图片
image_a = Image.open('after.png')
image_b = Image.open('before.png')
# 使用ImageChops来对比像素的不同
diff = ImageChops.difference(image_b,image_a)
# 获取图片差异位置得坐标 返回得坐标顺序为左 上 右 下
diff_posittion = diff.getbbox()
posittion_x = diff_posittion[0]
action.move_by_offset(int(posittion_x)-10 , 0)  # 设置移动距离 10是滑块到左边得像素值
action.release().perform()  # 松开鼠标
print(diff_posittion)
time.sleep(5)
browser.close()