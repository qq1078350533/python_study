import requests
from fake_useragent import UserAgent
# render.html显示网页源代码   wait 等待时间   render.png 打印图片
splash_url = "http://localhost:8050/render.html?url={}&wait=1"
url = 'https://www.guazi.com/loudi/buy/'
response = requests.get(splash_url.format(url),headers={'User-Agent':UserAgent().random})
response.encoding = 'utf-8'
print(response.text)