from selenium import webdriver
import time



# chromedriver 的目录路径
# driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 用的浏览器名称  和目录路径
chrome_options = webdriver.ChromeOptions()  #executable_path=driver_path
# chrome_options.add_argument('--user-agent=""')  # 设置请求头的User-Agent
# chrome_options.add_argument('--window-size=1280x1024')  # 设置浏览器分辨率（窗口大小）
# chrome_options.add_argument('--start-maximized')  # 最大化运行（全屏窗口）,不设置，取元素会报错
# chrome_options.add_argument('--disable-infobars')  # 禁用浏览器正在被自动化程序控制的提示
# chrome_options.add_argument('--incognito')  # 隐身模式（无痕模式）
# chrome_options.add_argument('--hide-scrollbars')  # 隐藏滚动条, 应对一些特殊页面
# chrome_options.add_argument('--disable-javascript')  # 禁用javascript
# chrome_options.add_argument('--blink-settings=imagesEnabled=false')  # 不加载图片, 提升速度
chrome_options.add_argument('--headless')  # 浏览器不提供可视化页面

# chrome_options.add_argument('--ignore-certificate-errors')  # 禁用扩展插件并实现窗口最大化
chrome_options.add_argument('--disable-gpu')  # 禁用GPU加速
# chrome_options.add_argument('–disable-software-rasterizer')
# chrome_options.add_argument('--disable-extensions')
# chrome_options.add_argument('--start-maximized')

driver = webdriver.Chrome(options=chrome_options)



# 请求的网站
driver.get("https://www.baidu.com")

# 拿到网页源码
print(driver.page_source)

time.sleep(5)

# 关闭当前页面
# driver.close()

# 退出浏览器
driver.quit()

