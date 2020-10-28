from PIL import Image, ImageEnhance
from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
import cv2
import numpy as np
from io import BytesIO
import time, requests


class CrackSlider():
    """
    通过浏览器截图，识别验证码中缺口位置，获取需要滑动距离，并模仿人类行为破解滑动验证码
    """

    def __init__(self):
        super(CrackSlider, self).__init__()
        # 实际地址
        self.url = 'http://dun.163.com/trial/jigsaw'
        self.driver = webdriver.Chrome()
        #等待加载元素，最多20s
        self.wait = WebDriverWait(self.driver, 20)
        self.zoom = 1

    def open(self):
        self.driver.get(self.url)

    def get_pic(self):
        time.sleep(2)
        #等待验证码全部加载出来
        target = self.wait.until(EC.presence_of_element_located((By.CLASS_NAME, 'yidun_bg-img')))
        template = self.wait.until(EC.presence_of_element_located((By.CLASS_NAME, 'yidun_jigsaw')))
        #获取验证码的链接
        target_link = target.get_attribute('src')
        template_link = template.get_attribute('src')
        #下载验证码图片
        print(target_link)
        target_img = Image.open(BytesIO(requests.get(target_link).content))
        template_img = Image.open(BytesIO(requests.get(template_link).content))
        #保存验证码
        target_img.save('target.jpg')
        template_img.save('template.png')
        size_orign = target.size
        #获取背景图的尺寸
        local_img = Image.open('target.jpg')
        size_loc = local_img.size
        print(f'{size_loc}图片尺寸大小')
        self.zoom = 320 / int(size_loc[0])

    def get_tracks(self, distance):
        print(f'distance是{distance}')
        distance += 20
        v = 0
        t = 0.2
        forward_tracks = []
        current = 0
        mid = distance * 3 / 5
        while current < distance:
            if current < mid:
                a = 2
            else:
                a = -3
            s = v * t + 0.5 * a * (t ** 2)
            v = v + a * t
            current += s
            forward_tracks.append(round(s))

        back_tracks = [-3, -3, -2, -2, -2, -2, -2, -1, -1, -1]
        return {'forward_tracks': forward_tracks, 'back_tracks': back_tracks}

    def match(self, target, template):
        #读取图片，读进来直接是BGR 格式数据格式在 0~255
        img_rgb = cv2.imread(target)
        #cv2.cvtColor(p1,p2) 是颜色空间转换函数，p1是需要转换的图片，p2是转换成何种格式。
        #cv2.COLOR_BGR2GRAY 将BGR格式转换成灰度图片，发现转换后并不是通常意义上的黑白图片。
        #灰度图片并不是指常规意义上的黑白图片，只用看是不是无符号八位整型（unit8）,单通道即可判断。
        img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
        #0表示采用黑白的方式读取图片.
        template = cv2.imread(template, 0)
        run = 1
        #print(f'图片的template{template}')
        w, h = template.shape[::-1]
        print(f'图片处理的{w}, {h}')
        #在背景图里面查找滑块图的位置
        res = cv2.matchTemplate(img_gray, template, cv2.TM_CCOEFF_NORMED)
        #print(f'匹配程度{res}')
        # 使用二分法查找阈值的精确值
        L = 0
        R = 1
        while run < 20:
            run += 1
            threshold = (R + L) / 2
            print(threshold)
            if threshold < 0:
                print('Error')
                return None
            #匹配程度大于百分之threshold的坐标x,y
            loc = np.where(res >= threshold)

            print(len(loc[1]))
            if len(loc[1]) > 1:
                L += (R - L) / 2
            elif len(loc[1]) == 1:
                print('目标区域起点x坐标为：%d' % loc[1][0])
                break
            elif len(loc[1]) < 1:
                R -= (R - L) / 2
        #返回x坐标
        return loc[1][0]

    def crack_slider(self):
        #打开网易云盾网址
        self.open()
        #获取背景图和滑块图
        target = 'target.jpg'
        template = 'template.png'
        self.get_pic()
        #获取目标区域起点X坐标
        distance = self.match(target, template)
        tracks = self.get_tracks((distance + 7) * self.zoom)  # 对位移的缩放计算
        print(f'tracks是{tracks}')
        #鼠标点击滑块出现滑块验证码，开始定位滑块元素
        slider = self.wait.until(EC.element_to_be_clickable((By.CLASS_NAME, 'yidun_slider')))
        #鼠标左键点击滑块不放开
        ActionChains(self.driver).click_and_hold(slider).perform()
        #开始分段向右移动
        for track in tracks['forward_tracks']:
            ActionChains(self.driver).move_by_offset(xoffset=track, yoffset=0).perform()
        time.sleep(0.5)
        print('向右过度位移完成')
        for back_tracks in tracks['back_tracks']:
            ActionChains(self.driver).move_by_offset(xoffset=back_tracks, yoffset=0).perform()
        print('倒退完成')
        #来回摆动两下
        ActionChains(self.driver).move_by_offset(xoffset=-3, yoffset=0).perform()
        ActionChains(self.driver).move_by_offset(xoffset=3, yoffset=0).perform()
        time.sleep(0.5)
        #松开鼠标左键
        ActionChains(self.driver).release().perform()
        try:
            #判断是否滑动失败，通过识别是否出现‘向右拖动滑块填充拼图’来识别。
            failure = self.wait.until(
                EC.text_to_be_present_in_element((By.CLASS_NAME, 'yidun_tips__text yidun-fallback__tip'), '向右拖动滑块填充拼图'))
            print(failure)
        except:
            print('验证成功')
            return None
        #如果失败了，重新破解验证码
        if failure:
            self.crack_slider()


if __name__ == '__main__':
    c = CrackSlider()
    c.crack_slider()
