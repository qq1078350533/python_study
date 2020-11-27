import requests
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
import time
# from fake_useragent import UserAgent  # pip install fake_useragent


class Jetstar():
    def __init__(self):
        self.url = 'https://www.jetstar.com/cn/zh/search-flights?origin=SIN&destination=HAK&flight-type=2&selected-departure-date=16-08-2020&selected-return-date=23-08-2020&adult=1&flexible=1&currency=SGD&sale-id=56978aa4-bc33-4bb0-90f8-9cd6258d9317'
        chrome_options = webdriver.ChromeOptions()
        # chrome_options.add_argument('--headless')  # 浏览器不提供可视化页面
        # print(UA)
        # chrome_options.add_argument(
        #    f'user-agent={UA}')  # 浏览器不提供可视化页面
        chrome_options.add_argument(
           'user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36')  # 浏览器不提供可视化页面
        chrome_options.add_argument('--start-maximized')  # 最大化窗口
        chrome_options.add_argument('--disable-infobars')  # 禁用浏览器正在被自动化程序控制的提示
        # chrome_options.add_argument(
        #     '--blink-settings=imagesEnabled=false')  # 不加载图片
        chrome_options.add_experimental_option("excludeSwitches", [
            "enable-automation"])  # 设置开发者模式启动 ，该模式下webdriver为正常值
        chrome_options.add_experimental_option('useAutomationExtension', False)
        self.brower = webdriver.Chrome(options=chrome_options)
        self.brower.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
            "source": """
                    Object.defineProperty(navigator, 'webdriver', {
                      get: () => undefined
                    })
                  """
        })

    def run(self):
        self.brower.get(self.url)
        WebDriverWait(
            driver=self.brower, timeout=100).until(
            Ec.element_to_be_clickable(
                (By.CSS_SELECTOR,
                 '#flightsearch-form > div.date-pickers.js-datepickers.js-date-config > div.date-search.js-datesearch > div.date-search__section.js-datesearch-review > div.date-search__container.clearfix > div > div.js-flight-summary__section > div > button')))
        js = "var q=document.documentElement.scrollTop=100000"
        self.brower.execute_script(js)
        self.brower.find_element_by_css_selector(
            '#flightsearch-form > div.date-pickers.js-datepickers.js-date-config > div.date-search.js-datesearch > div.date-search__section.js-datesearch-review > div.date-search__container.clearfix > div > div.js-flight-summary__section > div > button').click()
        try:
            WebDriverWait(
                driver=self.brower, timeout=10).until(
                Ec.element_to_be_clickable(
                    (By.CSS_SELECTOR,
                     '#economy-SIN-HAK > div.js-outbound.display-currency-SGD > div:nth-child(2) > div > div > div.flight-card.js-fare-row-summary')))
            print(self.brower.get_cookies())
        except:
            print('异常')
        time.sleep(5)
        self.brower.quit()


if __name__ == '__main__':
    while True:
        # ua = UserAgent()
        # user_agent = ua.random
        spider = Jetstar()
        spider.run()
