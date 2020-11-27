# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/19
"""
"""
用于html有确切得缺口值
"""
from selenium import webdriver
import re,time
from parsel import Selector


browser = webdriver.Chrome()
# 驱动chrome浏览器打开滑动验证码
browser.get('http://www.porters.vip/captcha/jigsaw.html')
# 定位滑块
jigsawCircle = browser.find_element_by_xpath('//span[@id="jigsawCircle"]')
action = webdriver.ActionChains(browser)
# 保持不松开
action.click_and_hold(jigsawCircle).perform()
# 寻找缺口和滑块坐标
mbk_style = browser.find_element_by_xpath('//div[@id="missblock"]').get_attribute('style')
tbk_style = browser.find_element_by_xpath('//div[@id="targetblock"]').get_attribute('style')
a = re.compile('left: (.*?)px; .*?px')
mbk_left = float(re.findall( a, mbk_style)[0].strip())
tbk_left = float(re.findall(a, tbk_style)[0].strip())
# 计算两个得差值
distance = tbk_left - mbk_left
# 移动距离
action.move_by_offset(distance, 0)
# 松开鼠标
action.release().perform()
time.sleep(2)
browser.close()