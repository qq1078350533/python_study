from selenium.webdriver import Chrome
import time

"""
splash 代码：

function main(splash, args)
  assert(splash:go(args.url))
  assert(splash:wait(0.5))
  -- 定位按钮
  local bton = splash:select('.btn.btn-primary.btn-lg')
  assert (splash:wait(1))
  -- 鼠标悬停
  bton:mouse_hover()
  -- 点击按钮
  bton:mouse_click()
  assert(splash:wait(1))
  return {
    -- 返回截图
    png = splash:png(),
    
  }
end
"""

browser = Chrome()
browser.get('http://www.porters.vip/features/webdriver.html')
# 编码修改 navigator.webdriver 值得JavaScript 代码
script = 'Object.defineProperty(navigator, "webdriver", {get: () => false,});'
# 运行JavaScript 代码
browser.execute_script(script)
time.sleep(1)
# 定位按钮点击
browser.find_element_by_css_selector(".btn.btn-primary.btn-lg").click()
# 定位到文章内容
elements = browser.find_element_by_css_selector('#content')
time.sleep(1)
# 打印文章内容
print(elements.text)
browser.close()