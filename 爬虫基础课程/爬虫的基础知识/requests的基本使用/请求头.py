import requests

#定义请求
url = 'https://music.163.com/#/playlist?id=979321026'

#发起get请求
res = requests.get(url=url)
code = res.status_code
print(code)

if code == 200:
    with open('./test.html','w') as fp:
        fp.write(res.text)