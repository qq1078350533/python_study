from selenium import webdriver
import time
# chromedriver 的目录路径

# 用的浏览器名称  和目录路径
driver = webdriver.Chrome()
# driver = webdriver.PhantomJS()

# 请求的网站
driver.get("https://www.baidu.com/")
# 最大化窗口
driver.maximize_window()
inputBtn = driver.find_element_by_id("kw")
inputBtn.send_keys('python')

sunmitTag = driver.find_element_by_id('su')
sunmitTag.click()
#driver获取cookies
cookies = driver.get_cookies()
# print(cookies)
cookis = {i['name']:i['value'] for i in cookies}
print(cookis)
#截图
driver.save_screenshot('./baidu.png')
time.sleep(4)
driver.quit()