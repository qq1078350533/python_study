from selenium import webdriver
from selenium.webdriver.common.by import By #用于指定 HTML 文件中 DOM 标签元素
from selenium.webdriver.support.ui import WebDriverWait #等待网页加载完成
from selenium.webdriver.support import expected_conditions as EC #指定等待网页加载结束条件
import time


url = 'http://i.mooc.chaoxing.com/space/index.shtml'
# 实例化浏览器
broswer = webdriver.Chrome()
# 打开网页
broswer.get(url)

# 等待账户输入框元素出现
WebDriverWait(broswer,10).until(EC.presence_of_element_located((By.CLASS_NAME,'zl_btn_right')))
id = '13733707382'
password = 'dahao182374774'
yanzheng = input('请输入你的验证码')
# 定位账户，密码框
user = broswer.find_element_by_xpath('//input[@id="unameId"]')
pwd = broswer.find_element_by_xpath('//input[@id="passwordId"]')
yan = broswer.find_element_by_xpath('//input[@id="numcode"]')
# 输入账户密码
user.click()
user.send_keys(id)
pwd.click()
pwd.send_keys(password)
yan.click()
yan.send_keys(yanzheng)
# 找到登录按钮，点击【登录】
login = broswer.find_element_by_xpath('//input[@class="zl_btn_right"]')
login.click()


#进入第二页
broswer.switch_to.frame(broswer.find_element_by_xpath("//iframe[contains(@id,'frame_content')]"))
into = broswer.find_element_by_xpath('//a[@title="军事理论（2019级必修）"]')
#可更改成输入课程名字的方式
into.click()
time.sleep(5)

#进入第三页
# 打开一个新的页面 即转到1.1
broswer.execute_script('window.open("{}")'.format('http://mooc1.chaoxing.com/mycourse/studentstudy?chapterId=171634958&courseId=205281592&clazzid=10590292&enc=49445ddcd95901373a1efc1067dcf5af'))
# 切换到这个网站
broswer.switch_to_window(broswer.window_handles[1])

# 切换到视频页面
onclick = broswer.find_element_by_id('dct2')
onclick.click()

s = WebDriverWait(broswer,10).until(EC.presence_of_element_located((By.CSS_SELECTOR,'#video > button > span.vjs-icon-placeholder')))
s.click()