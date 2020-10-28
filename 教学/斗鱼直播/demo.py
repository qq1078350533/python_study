# coding:utf-8
# author:snackdeng
from selenium import webdriver
import time


class DouyuSpider:
    def __init__(self):
        self.start_url = 'https://www.douyu.com/directory/all'
        self.driver = webdriver.Chrome()

    def get_content_list(self):
        li_list = self.driver.find_elements_by_xpath('//ul[@class="layout-Cover-list"]/li')
        content_list = []
        for li in li_list:
            item = {}
            item['title'] = li.find_element_by_xpath('.//h3[@class="DyListCover-intro"]').get_attribute("title")
            item['room_cate'] = li.find_element_by_xpath('.//span[@class="DyListCover-zone"]').text
            item['anchor_name'] = li.find_element_by_xpath('.//h2[@class="DyListCover-user"]').text
            item['watch_num'] = li.find_element_by_xpath('.//span[@class="DyListCover-hot"]').text
            content_list.append(item)
            print(item)
        # 获取下一页的元素
        next_url = self.driver.find_elements_by_xpath('//li[@class=" dy-Pagination-next"]')
        next_url = next_url[0].find_element_by_xpath('./span') if len(next_url)> 0 else None
        return content_list, next_url

    def save_content_list(self, content_list):
        pass

    def run(self):
        #1.start_url
        #2.发送请求，获取相应
        self.driver.get(self.start_url)
        next_url = 1
        while next_url is not None:
            #3.提取数据，提取下一页的元素
            time.sleep(2)
            content_list, next_url = self.get_content_list()
            #4.保存数据
            self.save_content_list(content_list)
            #5.点击下一页元素
            next_url.click()

if __name__ == "__main__":
    douyu = DouyuSpider()
    douyu.run()