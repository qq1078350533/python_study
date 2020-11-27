from selenium import webdriver

# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 用的浏览器名称  和目录路径
driver = webdriver.Chrome(executable_path=driver_path)

# 请求的网站
driver.get("https://www.baidu.com")

# 新建一个网页
driver.execute_script("window.open('https://www.douban.com/')")
# 显示当前网站的网址
print(driver.current_url)
# 切换到这个网页  网页目录栏索引从0开始  返回一个列表
driver.switch_to_window(driver.window_handles[1])


'''
虽然在窗口中切换到了新的页面，但是driver中还没有切换
如果想要在代码中切换到新的界面，并且做一些爬虫
就要用driver.switch_to_window(driver.window_handles[1])切换

'''