import execjs
import requests

js = open('js调试.js', 'r', encoding='utf-8').read()
ctx = execjs.compile(js)
result = ctx.call('pwd')