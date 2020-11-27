#导入框架
import requests
#确定一个网页
url = 'https://music.163.com/song?id=1361348080'
#模拟浏览器发送http请求

result = requests.get(url).content
with open("./hhhh.mp3","wb") as f:
    f.write(result)


