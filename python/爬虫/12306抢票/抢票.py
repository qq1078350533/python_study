import requests
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
from PIL import Image


class Qiangpiao(object):
    def __init__(self):
        self.login_url = 'https://kyfw.12306.cn/otn/resources/login.html'
        self.initmy_url = 'https://kyfw.12306.cn/otn/view/index.html'
        self.search_url = 'https://kyfw.12306.cn/otn/leftTicket/init'
        driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
        self.driver = webdriver.Chrome(executable_path=driver_path)

    def wait_input(self):
        self.from_station = input('起始站：')
        self.to_station = input('终点站：')
        self.depart_time = input('出发时间（时间格式2020-01-08）：')
        self.passengers = input('请输入您的乘客信息（一定要正确，如果要多个乘客用英文逗号隔开）：').split(',')

        self.trains = input('车次（多个车次，用英文逗号隔开）：').split(',')

    def _login(self):
        self.driver.get(self.login_url)
        by_tn = self.driver.find_element_by_class_name("login-hd-account")
        by_tn.click()
        nameBtn = self.driver.find_element_by_id('J-userName')
        nameBtn.send_keys('13348783892')
        passwdBtn = self.driver.find_element_by_id('J-password')
        passwdBtn.send_keys('yijiaren980801')
        login_img_element = WebDriverWait(self.driver, 10000).until(
            Ec.visibility_of_all_elements_located((By.ID, 'J-loginImg'))
        )
        print(login_img_element.location)
        print(login_img_element.size)

        WebDriverWait(self.driver, 1000).until(
            Ec.url_to_be(self.initmy_url)
        )
        print('登陆成功')

    def _order_ticket(self):
        self.driver.get(self.search_url)
        # 等待输入的信息是否正确
        WebDriverWait(self.driver, 1000).until(
            Ec.text_to_be_present_in_element_value((By.ID, 'fromStationText'), self.from_station)
        )

        WebDriverWait(self.driver, 1000).until(
            Ec.text_to_be_present_in_element_value((By.ID, 'toStationText'), self.from_station)
        )

        WebDriverWait(self.driver, 1000).until(
            Ec.text_to_be_present_in_element_value((By.ID, 'train_date'), self.from_station)
        )
        # 是否能点击
        WebDriverWait(self.driver, 1000).until(
            Ec.element_to_be_clickable((By.ID, 'query_ticket'))
        )

        seachBtn = self.driver.find_element_by_class_name('btn92s')
        seachBtn.click()

    def run(self):
        # self.wait_input()
        self._login()
        # self._order_ticket()


if __name__ == '__main__':
    spider = Qiangpiao()
    spider.run()
