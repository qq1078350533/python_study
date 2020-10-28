import execjs
import requests


with open("a.js", 'r') as f:
    js = f.read()
    ctx = execjs.compile(js)

a = ctx.call("rsaFun","yijiaren.980801")

print(a)
url = 'https://passport.iqiyi.com/apis/reglogin/login.action'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
    'Host': 'passport.iqiyi.com',
    'Origin': 'https://www.iqiyi.com',
    'Referer': 'https://www.iqiyi.com/iframe/loginreg?ver=1'
}
data = {
    'email': '13348783892',
    'fromSDK': '1',
    'sdk_version': '1.0.0',
    'passwd': a,
    'agenttype': '1',
    '__NEW': '1',
    'checkExist': '1',
    'ptid': '01010021010000000000',
    'nr': '1',
    'verifyPhone': '1',
    'area_code': '86',
    'dfp': 'a1fbe56d70cab948a882a6f63db3fdbe98caac6e3d7c51a043646e49a6a8d73377',
}
response = requests.post(url,headers=headers,data=data)
print(response.text)