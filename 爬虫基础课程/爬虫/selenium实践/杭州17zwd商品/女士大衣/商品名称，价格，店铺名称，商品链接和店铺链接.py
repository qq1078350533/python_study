# 商品名称，价格，店铺名称，商品链接和店铺链接
# http://hz.17zwd.com/index.htm
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
import time
import re



# 用的浏览器名称  和目录路径
driver = webdriver.Chrome()
url = 'http://hz.17zwd.com/index.htm'
driver.get(url)
wait = WebDriverWait(driver,10000)
btn_icno = wait.until(
                Ec.element_to_be_clickable((By.XPATH,'//div[@class="announcement-head"]/i'))
            )

btn_icno.click()
btn_input = wait.until(
                Ec.element_to_be_clickable((By.ID,'upload-text'))
            )
btn_input.send_keys('女式大衣')
btn_button = driver.find_element_by_xpath('//*[@id="J_search_form"]/div[4]/button[1]')
btn_button.click()
text = driver.page_source
tittles = re.findall('<a class="goods-title goods-card-row".*?>(.*?)</a>',text,re.M)
print(tittles)
time.sleep(30)
driver.quit()
