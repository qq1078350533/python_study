# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/19
"""

from selenium import webdriver
import time
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By

class Airasia():
    def __init__(self):
        self.url = "https://www.airasia.cn/select/zh/cn/CAN/PNH/2020-09-12/N/1/0/0/O/N/CNY/ST?key=62a7fae6-b158-11ea-adb1-9f8d686a7fab1592480375.86"
        chrome_options = webdriver.ChromeOptions()
        chrome_options.add_argument('--headless')  # 浏览器不提供可视化页面
        chrome_options.add_argument('--start-maximized')  # 最大化窗口
        # chrome_options.add_argument('--disable-infobars')  # 禁用浏览器正在被自动化程序控制的提示
        chrome_options.add_argument('--blink-settings=imagesEnabled=false')  #不加载图片
        self.brower = webdriver.Chrome(options=chrome_options)


    def run(self):
        self.brower.get(url=self.url)
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.presence_of_element_located(
                (By.XPATH, '//span[@class="fare-amount"]'))
        )
        price = self.brower.find_element_by_xpath('//span[@class="fare-amount"]').text
        print(f'价格为{price}CNY')



if __name__ == '__main__':
    spider = Airasia()
    spider.run()