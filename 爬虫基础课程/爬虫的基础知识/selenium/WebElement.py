from selenium import webdriver
from selenium.webdriver.remote.webelement import WebElement
import scrap

# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)

# 请求的网站
driver.get("https://www.baidu.com")

sumbitBtn = driver.find_element_by_id("su")
print(type(sumbitBtn))

# 获取value 的值<input type="submit" id="su" value="百度一下" class="bg s_btn">
print(sumbitBtn.get_attribute("value"))

# 页面截图
driver.save_screenshot("文件名.png")