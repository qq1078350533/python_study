from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'
# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)

# 请求的网站
driver.get("https://www.douban.com/")

# # 隐式等待
# driver.implicitly_wait(5)

# 显示等待
element = WebDriverWait(driver,5).until(
    EC.presence_of_element_located((By.NAME,"phone"))
)
print(element)
