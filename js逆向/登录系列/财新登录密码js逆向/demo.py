import execjs
import requests

js = open('js逆向.js', 'r', encoding='utf-8').read()
ctx = execjs.compile(js)
result = ctx.call('pwd','1111')
print(execjs.get().name)
print(result)