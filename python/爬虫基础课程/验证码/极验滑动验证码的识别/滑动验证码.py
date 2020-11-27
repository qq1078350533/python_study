# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/19
"""
from selenium import webdriver
import time

browser = webdriver.Chrome()
browser.get('http://www.porters.vip/captcha/sliders.html')
# 定位滑块
hover = browser.find_element_by_xpath('//div[@id="sliderblock"]')
# 拖拽方法
action = webdriver.ActionChains(browser)
action.click_and_hold(hover).perform() # 点击并保持不松开
action.move_by_offset(338, 0) #设置滑动距离，横向距离为340px，纵向距离为0px
action.release().perform() #松开鼠标
time.sleep(2)
browser.close()