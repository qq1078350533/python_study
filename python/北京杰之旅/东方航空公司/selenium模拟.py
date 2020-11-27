# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/16
"""
from selenium import webdriver
import time
import requests
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
from a import Ceairs

class Ceair():
    def __init__(self):
        self.url = "http://www.ceair.com/booking/aicn-sha-201031_CNY.html"
        self.chrome_options = webdriver.ChromeOptions()
        # self.chrome_options.add_argument('headless')
        self.chrome_options.add_argument('start-maximized')  # 最大化窗口
        # self.chrome_options.add_argument('disable-infobars')  # 禁用浏览器正在被自动化程序控制的提示
        # chrome_options.add_argument('--blink-settings=imagesEnabled=false')
        self.brower = webdriver.Chrome(chrome_options=self.chrome_options)



    def page(self):
        self.brower.get(url=self.url)
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.element_to_be_clickable(
                (By.XPATH, '//dd[@name="lowest"]'))
        )
        self.brower.find_element_by_xpath('//*[@id="user_cookie_close"]').click()
        # 等待页面加载出价格仓位
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.presence_of_element_located(
                (By.XPATH, '//dd[@name="lowest"]'))
        )
        sailing_way_click = self.brower.find_element_by_xpath(
            '//dl/dd[@class="price economy COMMON_SOTO"]').click()
        # 等待页面加载出
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.element_to_be_clickable(
                (By.XPATH, '//button[@name="select"]'))
        )
        btop = self.brower.find_element_by_xpath('//button[@name="select"][1]')
        btop.click()
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.presence_of_element_located(
                (By.XPATH, '//iframe[@id="centerWindow"]'))
        )
        self.brower.switch_to_frame(
            self.brower.find_element_by_xpath('//iframe[@id="centerWindow"]'))
        # 等待表单加载出来
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.presence_of_element_located(
                (By.XPATH, '//input[@name="username"]'))
        )
        self.brower.find_element_by_xpath(
            '//input[@name="username"]').send_keys('432522199808011393')
        self.brower.find_element_by_xpath(
            '//input[@name="password"]').send_keys('19980801')
        self.brower.find_element_by_xpath('//input[@class="button "]').click()
        cookies = self.brower.get_cookies()
        a = Ceairs()
        b = a.get_geetInit(cookies)
        b["84bb15efa4e13721_gr_cs1"] = "548970905CE12B142966BF781911666F"
        b["84bb15efa4e13721_gr_last_sent_cs1"] = "548970905CE12B142966BF781911666F"
        b["84bb15efa4e13721_gr_last_sent_sid_with_cs1"] = "49658343-f07f-47af-bcfa-d922f6191bd3"
        b["84bb15efa4e13721_gr_session_id_49658343-f07f-47af-bcfa-d922f6191bd3"] = "true"
        b["user_Ta"] = "sadcb0eb6-8b9e-4c65-a622-683092d2503c.69e442519c0a543f863c06b129b18211"
        b["user_cookie"] = "true"
        b['user_ta_id'] = '250197f0-b1e5-11ea-9771-cfd0a5af1326'
        self.brower.refresh()
        time.sleep(5)
        for k, v in b.items():
            # 第一种添加格式
            self.brower.add_cookie({"name": k, "value": v, 'path': '/', 'domain': 'www.ceair.com'})

        self.brower.refresh()
        # time.sleep(20)
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.presence_of_element_located(
                (By.XPATH, '//dd[@name="lowest"]'))
        )
        sailing_way_click = self.brower.find_element_by_xpath(
            '//dl/dd[@class="price economy COMMON_SOTO"]').click()
        # 等待页面加载出
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.element_to_be_clickable(
                (By.XPATH, '//button[@name="select"]'))
        )
        btop = self.brower.find_element_by_xpath('//button[@name="select"][1]')
        btop.click()
        self.drawer()
        self.brower.close()


    def drawer(self):
        WebDriverWait(driver=self.brower, timeout=100).until(
            Ec.element_to_be_clickable(
                (By.XPATH, '//article[@class="list"]'))
        )
        self.brower.find_element_by_xpath('//input[@name="paxNameLast"]').send_keys('deng')
        self.brower.find_element_by_xpath('//input[@name="paxNameFirst"]').send_keys('genghui')
        self.brower.find_element_by_xpath('//input[@name="mobile"]').send_keys('13348783892')
        self.brower.find_element_by_xpath('//input[@name="email"]').send_keys("2356125512@qq.com")
        # self.brower.find_element_by_xpath('//*[@id="btn_passenger"]').click()

        cookies =  self.brower.get_cookies()
        print(cookies)



    def run(self):
        # cookies3 {'Webtrends': '46deeb78.5a8434bf4c8a1', 'com.ceair.cesso': '8199E9A7B67D3797E0BF5AC63C03419CEED96E201276B81B1ED121B8830F17EB', 'ffpno': '432522199808011393', 'passportId': '548970905CE12B142966BF781911666F', 'JSESSIONID': 'PdkBJEIQnq+aGCAZhrKOw0lu.cessoServer4'}
        self.page()


if __name__ == '__main__':
    spider = Ceair()
    spider.run()