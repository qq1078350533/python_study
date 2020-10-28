import time
from appium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

desired_caps = {}
desired_caps['platformName'] = 'Android'
desired_caps['platformVersion'] = '5.1.1'
desired_caps['deviceName'] = 'SM-N960F'
desired_caps['appPackage'] = 'com.tencent.mm'
desired_caps['appActivity'] = '.ui.LauncherUI'
driver = webdriver.Remote('http://127.0.0.1:4723/wd/hub', desired_caps)
wait = WebDriverWait(driver,10)
# 获取到登录按钮后点击
login_btn = wait.until(EC.element_to_be_clickable((By.ID, "com.tencent.mm:id/emg")))
login_btn.click()

# 获取使用微信号登录按钮
change_login_btn =wait.until(EC.element_to_be_clickable((By.ID, "com.tencent.mm:id/d0o")))
change_login_btn.click()

# 获取输入账号元素并输入
account = wait.until(
    EC.presence_of_element_located((By.XPATH, '//*[@resource-id="com.tencent.mm:id/m6"]/android.widget.EditText')))
account.send_keys("你的微信账号")
# 获取密码元素并输入
password = wait.until(
    EC.presence_of_element_located((By.XPATH, '//*[@resource-id="com.tencent.mm:id/m6"]/android.widget.EditText')))
password.send_keys("你的微信密码")
# 登录
login = wait.until(EC.element_to_be_clickable((By.ID, "com.tencent.mm:id/cov")))
login.click()