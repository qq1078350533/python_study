#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: demo.js
@time: 2020/9/4 16:47
@desc: https://i.qq.com/
"""
import cv2
from selenium import webdriver
import time,requests
from selenium.webdriver import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

EMAIL = '1231313'
PASSWORD = '132131'
BORDER = 6
INIT_LEFT = 60

class deng():
    def __init__(self):
        self.url = "https://i.qq.com/"
        options = webdriver.ChromeOptions()
        # 不加载图片,加快访问速度
        options.add_experimental_option("prefs", {"profile.managed_default_content_settings.images": 2})
        # 此步骤很重要，设置为开发者模式，防止被各大网站识别出来使用了Selenium
        options.add_experimental_option('excludeSwitches', ['enable-automation'])
        # 添加本地代理
        # options.add_argument("--proxy--server=127.0.0.1:8080")
        # 添加UA
        ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36'
        chrome_path = r"C:\Program Files\Google\Chrome\Application\chromedriver.exe"

        options.add_argument('user-agent=' + ua)
        self.driver = webdriver.Chrome(options=options,executable_path=chrome_path)
        self.driver.maximize_window()
        self.wait = WebDriverWait(self.driver,20)
        self.email = EMAIL
        self.password = PASSWORD

    # def __del__(self):
    #     self.driver.close()

    def get_geetest_button(self):
        self.driver.get(self.url)
        # 切换进入iframe中
        self.driver.switch_to.frame(self.driver.find_element_by_xpath('//*[@id="login_frame"]'))
        self.driver.find_element_by_xpath('//*[@id="switcher_plogin"]').click()
        self.driver.find_element_by_xpath('//*[@id="u"]').send_keys(self.email)
        self.driver.find_element_by_xpath('//*[@id="p"]').send_keys(self.password)
        self.driver.find_element_by_xpath('//*[@id="login_button"]').click()

    def get_slider(self):
        """
        获取滑块
        :return: 滑块对象
        """
        time.sleep(1)
        # 滑块
        self.driver.switch_to.frame(self.driver.find_element_by_xpath('//*[@id="tcaptcha_iframe"]'))
        # 获取图片和背景
        target = self.driver.find_element_by_xpath('//*[@id="slideBg"]')
        template = self.driver.find_element_by_xpath('//*[@id="slideBlock"]')
        self.get_image(target, "target")
        self.get_image(template, "template")
        return target

    def findPic(self,target="target.png", template="template.png"):
        """
        找出图像中最佳位置
        :param target: 目标即背景图
        :param template: 模块即需要找到的图
        :return: 返回最佳匹配及其最差匹配和对应的坐标
        """
        # 读取背景图片
        target_rgb = cv2.imread(target)
        # 灰度处理
        target_gray = cv2.cvtColor(target_rgb, cv2.COLOR_BGR2GRAY)
        # 读取模块图片
        template_rgb = cv2.imread(template, 0)
        # 匹配模块位置
        res = cv2.matchTemplate(target_gray, template_rgb, cv2.TM_CCOEFF_NORMED)
        # 获取最佳与最差位置
        value = cv2.minMaxLoc(res)
        # 返回最佳匹配的x坐标
        return value[2][0]

    def tracks(self,target,x):
        # 获取本地原图的宽度
        img = cv2.imread("target.png")
        w1 = img.shape[1]
        # 读取网页图片的宽度
        w2 = target.size['width']
        x = x * w2 / w1
        x = int(x + 9.3 - 32)
        return x

    def move_to_gap(self, target, track):
        """
        拖动滑块到缺口处
        :param target: 滑块
        :param track: 轨迹
        :return:
        """
        ActionChains(self.driver).click_and_hold(target).perform()
        for x in track:
            ActionChains(self.driver).move_by_offset(xoffset=x, yoffset=0).perform()
        time.sleep(0.5)
        ActionChains(self.driver).move_by_offset(xoffset=150, yoffset=0).perform()
        ActionChains(self.driver).release().perform()
        print("1111")

    def get_image(self,target,filename):
        response = requests.get(target.get_attribute('src')).content
        with open(filename+".png",'wb') as f:
            f.write(response)

    def get_track(self,distance):
        """
        根据偏移量获取移动轨迹
        :param distance: 偏移量
        :return: 移动轨迹
        """
        # 移动轨迹
        track = []
        # 当前位移
        current = 0
        # 减速阈值
        mid = distance * 4 / 5
        # 计算间隔
        t = 0.2
        # 初速度
        v = 0

        while current < distance:
            if current < mid:
                # 加速度为正2
                a = 2
            else:
                # 加速度为负3
                a = -3
            # 初速度v0
            v0 = v
            # 当前速度v = v0 + at
            v = v0 + a * t
            # 移动距离x = v0t + 1/2 * a * t^2
            move = v0 * t + 1 / 2 * a * t * t
            # 当前位移
            current += move
            # 加入轨迹
            track.append(round(move))
        return track

    def deng(self):
        self.get_geetest_button()
        target = self.get_slider()
        findPic = self.findPic()
        x = self.tracks(target,findPic)
        bili = [int(x / 5), x]
        print(x)
        track = self.get_track(x)
        print(track)
        self.move_to_gap(target,track)

if __name__ == '__main__':
    deng = deng()
    deng.deng()


