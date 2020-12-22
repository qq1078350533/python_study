import execjs
import requests

with open("./易班", 'r') as f:
    js = f.read()
    ctx = execjs.compile(js)
key = ctx.call("DES_Decrypt", dicts)
print(key)

