import execjs
import requests

with open("内容.js", 'r', encoding='utf-8') as f:
    js = f.read()
    ctx = execjs.compile(js)
result = ctx.call("pwd", "111111")
print(result)

