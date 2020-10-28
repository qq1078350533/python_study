from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)
# 请求的网站
driver.get("https://www.baidu.com/")

inputTag = driver.find_element_by_id('kw')
submitBtn = driver.find_element_by_id('su')
# 开始行为链
actions = ActionChains(driver)
actions.move_to_element(inputTag)
actions.send_keys_to_element(inputTag,'python')
actions.move_to_element(submitBtn)
actions.click(submitBtn)
# 执行上面的操作
actions.perform()