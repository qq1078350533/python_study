from selenium import webdriver

# url = 'https://weibo.com/login.php?spm=a2107.1.0.0.751311d9a1UC3G&entry=taobao&goto=https%3A%2F%2Flogin.taobao.com%2Faso%2Ftvs%3Fdomain%3Dweibo%26sid%3D520cb3ee812a168405f0b49a6cfccaa3%26target%3D68747470733A2F2F7777772E74616F62616F2E636F6D2F&goto2=https%3A%2F%2Fwww.taobao.com%2F'
url = 'https://www.taobao.com/'
driver = webdriver.Chrome()
driver.get(url)