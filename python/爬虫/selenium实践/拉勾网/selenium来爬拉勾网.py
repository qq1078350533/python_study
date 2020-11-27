# {'name': 'python爬虫', 'company': '趣精灵', 'salary': '15k-20k', 'city': '深圳', 'work_years': '经验1-3年', 'education': '大专及以上', 'desc': ''}
from selenium import webdriver
from lxml import etree
import re
import time
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By

class LagouSpider(object):
    def __init__(self):
        # chromedriver 的目录路径
        driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

        # 用的浏览器名称  和目录路径
        self.driver = webdriver.Chrome(executable_path=driver_path)
        self.url = "https://www.lagou.com/jobs/list_python%E7%88%AC%E8%99%AB?labelWords=sug&fromSearch=true&suginput=python"
        self.positions = []

    def run(self):
        # 解析拉勾网网页
        self.driver.get(self.url)
        body_btn = self.driver.find_element_by_class_name('body-btn')
        body_btn.click()
        while True:
            # 获取拉勾网网页的源代码
            source = self.driver.page_source
            # 当前页面出现查询数据时就进入，否则等待10秒
            WebDriverWait(driver=self.driver,timeout=10).until(
                Ec.presence_of_element_located((By.XPATH,'//span[@class="pager_next "]'))
            )
            self.parse_list_page(source)
            # 当已经到达最后一页时，退出循环

            next_btn = self.driver.find_element_by_class_name('pager_next ')
            if 'pager_next_disabled' in next_btn.get_attribute('class'):
                break
            else:
                next_btn.click()
            time.sleep(1)

    def parse_list_page(self,source):
        # 解析当前页面的源代码
        html = etree.HTML(source)
        # 查找当前页面的所有的招聘url个数
        links = html.xpath('//a[@class="position_link"]/@href')
        for link in links:
            self.request_detail_page(link)
            time.sleep(1)

    def request_detail_page(self,url):
        # 打开一个新的页面 即一个招聘信息的网站
        self.driver.execute_script('window.open("{}")'.format(url))
        # 切换到这个网站
        self.driver.switch_to_window(self.driver.window_handles[1])
        # self.driver.get(url)
        WebDriverWait(self.driver,timeout=10).until(
            Ec.presence_of_element_located((By.XPATH,'//h1[@class="name"]'))
        )
        # 获取这个网站的源代码
        source = self.driver.page_source
        self.parse_detail_page(source)
        # 关闭当前窗口
        self.driver.close()
        # 切换到列表网页
        self.driver.switch_to_window(self.driver.window_handles[0])


    def parse_detail_page(self,source):
        html = etree.HTML(source)
        position_name = html.xpath('//h1[@class="name"]/text()')[0]
        salary = html.xpath('//dd[@class="job_request"]//span/text()')[0].strip()
        city = html.xpath('//dd[@class="job_request"]//span/text()')[1]
        city = re.sub(r'[ /]', '', city)
        work_years = html.xpath('//dd[@class="job_request"]//span/text()')[2]
        work_years = re.sub(r'[ /]', '', work_years)
        education = html.xpath('//dd[@class="job_request"]//span/text()')[3]
        education = re.sub(r'[ /]', '', education)
        desc = ''.join(html.xpath('//dd[@class="job_bt"]//text()'))[4].strip()
        company = html.xpath('//em[@class="fl-cn"]/text()')[0].strip()
        position = {
            'name':position_name,
            'company':company,
            'salary':salary,
            'city':city,
            'work_years':work_years,
            'education':education,
            'desc':desc
        }
        self.positions.append(position)
        print(position)


if __name__ == '__main__':
    spider = LagouSpider()
    spider.run()