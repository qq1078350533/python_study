from selenium import webdriver

# chromedriver 的目录路径
driver_path = r'C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe'

# 使用代理ip
options = webdriver.ChromeOptions()
options.add_argument('--proxy-server=http://60.167.23.202:9999')

# 用的浏览器名称  和目录路径，IP参数
driver = webdriver.Chrome(executable_path=driver_path,chrome_options=options)

driver.get("http://httpbin.org/ip")

