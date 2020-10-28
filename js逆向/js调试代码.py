import execjs
import requests
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d0f0af6... 同步更新20201028
"64389594016"
js = open('js调试.js', 'r', encoding='utf-8').read()
ctx = execjs.compile(js, )
result = ctx.call('pd', 'yijiaren.980801')
print(result)
<<<<<<< HEAD
=======
=======

dicts = '{"equtype": "ANDROID", "loginImei": "Android862846363896419", "sign": "6749AAD1E0F3965CFDA537878A8E72B8", "timeStamp": "1598332646343", "userPwd": "1234567890", "username": "12345672673"}'

with open("test01.js", 'r') as f:
    js = f.read()
    ctx = execjs.compile(js)
key = ctx.call("DES_Decrypt", dicts)
print(key)
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
