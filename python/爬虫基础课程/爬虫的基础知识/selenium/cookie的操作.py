from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)
# 请求的网站
driver.get("https://www.baidu.com/")

# 获取当前网站的所有cookie
for cookie in driver.get_cookies():
    print(cookie)

print('==='*100)
# 查找cookie
print(driver.get_cookie('PSTM'))
print('==='*100)
#删除某一个cookie
driver.delete_cookie('PSTM')
print(driver.get_cookie('pstm'))
# 删除所有的cookie
driver.delete_all_cookies()