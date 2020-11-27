from selenium import webdriver
from selenium.webdriver.common.by import By #用于指定 HTML 文件中 DOM 标签元素
from selenium.webdriver.support.ui import WebDriverWait #等待网页加载完成
from selenium.webdriver.support import expected_conditions as EC #指定等待网页加载结束条件
import time
from selenium.webdriver import ActionChains

url = 'http://i.mooc.chaoxing.com/space/index.shtml'
# 实例化浏览器
broswer = webdriver.Chrome()
# 打开网页
broswer.get(url)
wait = WebDriverWait(broswer,10000)
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


# 打开一个新的页面 即添加课程
broswer.execute_script('window.open("{}")'.format('http://lit.benke.chaoxing.com/schoolcourse/schoolcourselist.html?type=5'))
# 切换到这个网站
broswer.switch_to_window(broswer.window_handles[1])
# addkc = broswer.find_element_by_xpath('/html/body/div/div[2]/div[1]/a')
# addkc.click()

# 选择类别
lists = broswer.find_element_by_xpath('//*[@id="top0"][2]')
lists.click()

# 选择科目PPT入门到精通
classes = broswer.find_element_by_class_name("img_list")
classes.click()

# 选择第一节1.1
# 打开一个新的页面 即转到1.1
broswer.execute_script('window.open("{}")'.format('http://mooc1.chaoxing.com/nodedetailcontroller/visitnodedetail?courseId=88181552&knowledgeId=121987204'))
# 切换到这个网站
broswer.switch_to_window(broswer.window_handles[2])

# 点击播放
ac = broswer.find_element_by_xpath('//*[@id="video"]/button/span[1]')
ActionChains(broswer).move_to_element(ac).click(ac).perform()

