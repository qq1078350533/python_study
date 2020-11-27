from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()
driver.get("https://detail.tmall.com/item.htm?spm=a2114o.8735339.14.1.78b87deanNRPGx&id=610099232418&materialId=K-4525-610099232418")
# WebDriverWait(driver,timeout=30).until(
#             Ec.presence_of_elements_located((By.XPATH,'//button[@class="J_Submit"]'))
#         )
time.sleep(5)
a = input('请输入你的账号：')
user = driver.find_element_by_xpath('//input[@id="TPL_username_1"]').clear()
user.send_keys(a)
b = input('请输入你的密码：')
passwod = driver.find_element_by_xpath('//input[@id="TPL_password_1"]')
passwod.send_keys('yijiaren.980801')
click = driver.find_element_by_id('J_SubmitStatic')
click.click()