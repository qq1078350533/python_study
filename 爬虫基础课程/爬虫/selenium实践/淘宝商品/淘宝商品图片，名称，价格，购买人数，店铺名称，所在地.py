from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
from urllib.parse import quote
from pyquery import PyQuery as pq

browser = webdriver.Chrome()
wait = WebDriverWait(browser,10)
KEYWORD = 'ipad'

def index_page(page):
    """
    抓取索引页
    :param page:页码
    :return:
    """
    print('正在爬第{}页'.format(page))
    try:
        url = 'https://s.taobao.com/search?q=' + quote(KEYWORD)
        browser.get(url)
        if page > 1:
            input = wait.until(
                Ec.element_to_be_located((By.CLASS_NAME,'input J_Input'))
            )
            submit = wait.until(
                Ec.element_to_be_clickable((By.CLASS_NAME,'btn J_Submit'))
            )
            input.clear()
            input.send_keys(page)
            submit.click()
        wait.until(
            Ec.text_to_be_present_in_element((By.CLASS_NAME,'num'),str(page))
        )
        wait.until(
            Ec.presence_of_element_located((By.CLASS_NAME,'items'))
        )
        get_products()
    except TimeoutException:
        index_page(page)
