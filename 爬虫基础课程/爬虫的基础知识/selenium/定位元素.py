from selenium import webdriver
import time
from lxml import etree

# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)

# 请求的网站
driver.get("https://www.baidu.com")
hxml = etree.HTML(driver.page_source)
hxml.xpath("")

# 用id来获取数据  kw是值  id="kw"
# inputTag = driver.find_element_by_id("kw")

#用by_name 来获取数据  name="wd"
# inputTag = driver.find_element_by_name("wd")

# 用class_name 来获取数据 class="s_ipt"
# inputTag = driver.find_element_by_class_name("s_ipt")

# 用xpath语法来获取数据 <input type="text" class="s_ipt" name="wd" id="kw" maxlength="100" autocomplete="off">
# inputTag = driver.find_element_by_xpath('//input[@id="kw"]')

#用css选择器  <span id="s_kw_wrap" class="bg s_ipt_wr quickdelete-wrap">
inputTag = driver.find_element_by_css_selector(".quickdelete-wrap > input")

print(inputTag)



#用
inputTag.send_keys("python")