from selenium import webdriver

driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)
driver.get('https://www.taobao.com')
print(driver.page_source)
print(driver.current_url)
