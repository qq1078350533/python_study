import requests
#定义请求
url = 'https://music.163.com/#/playlist?id=979321026'
#发起请求
re = requests.get(url=url)

params = {
    'wd':'中国'
}
# params 是加在网址后面的参数
url = requests.get("https://baidu.com/s",params = params,headers= headers)

print(re)
#<Response [200]>

print(re.content)
#二进制的文本

print(re.content.decode('utf-8'))
print(re.text)
#二进制转化为utf-8

print(re.request.headers)
#请求头信息 user-agent: .....{'User-Agent': 'python-requests/2.22.0', 'Accept-Encoding': 'gzip, deflate', 'Accept': '*/*', 'Connection': 'keep-alive'}

print(re.headers)
#响应头信息{'Server': 'nginx', 'Date': 'Tue, 10 Dec 2019 12:52:47 GMT', 'Content-Type': 'text/html;charset=utf8', 'Transfer-Encoding': 'chunked', 'Connection': 'keep-alive', 'Vary': 'Accept-Encoding', 'Cache-Control': 'no-store, no-cache', 'Pragrma': 'no-cache', 'Expires': 'Thu, 01 Jan 1970 00:00:00 GMT', 'Content-Language': 'en-US', 'X-Via': 'MusicServer', 'X-From-Src': '58.20.17.140', 'Content-Encoding': 'gzip'}

print(re.status_code)
#请求状态码200是ok    200

print(re.url)
#请求的url地址https://music.163.com/#/playlist?id=979321026
