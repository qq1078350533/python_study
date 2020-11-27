# 常见的表单元素（即在网页中的操作）：input（搜索框）标签  type='text/password/email/number'
# button  input【type='submit'】
# checkbox（勾选框打钩） input='checkbox'
# select 下拉列表（下拉列表的选项）



# 操作输入框
# from selenium import webdriver
# import time
#
# # chromedriver 的目录路径
# driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# # 用的浏览器名称  和目录路径
# driver = webdriver.Chrome(executable_path=driver_path)
# # 请求的网站
# driver.get("https://www.baidu.com/")
# inputTag = driver.find_element_by_id('kw')
# inputTag.send_keys('python')
# time.sleep(5)
# # 清除所输入的字符串
# inputTag.clear()



# 操作checkbox
# from selenium import webdriver
#
# # chromedriver 的目录路径
# driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# # 用的浏览器名称  和目录路径
# driver = webdriver.Chrome(executable_path=driver_path)
# # 请求的网站
# driver.get("https://www.douban.com/")
# remberBtn = driver.find_element_by_id('account-form-remember')
# # 选中 鼠标点击
# remberBtn.click()



# 操作select标签
from selenium import webdriver
from selenium.webdriver.support.ui import Select
# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)
# 请求的网站
driver.get("https://www.douban.com/")
# 包装一下
selectbtn = Select(driver.find_element_by_id('account-form-remember'))
# 下拉列表中第一个
selectbtn.select_by_index(1)
# 也可以根据值来即内容
selectbtn.select_by_value(".....")
# 也可以根据他显示的选项来操作
selectbtn.select_by_visible_text(".....")
# 取消选中的所有选项
selectbtn.deselect_all()