# https://passport.wanmei.com/sso/login
# password: FgsvS+ToO3ZPLUa66qNY+hctIAYmIQM2hfeE3yaDW5M0JVPe/ivxubw2n4YfVuPLM+YRO+ry4B7NdMq1dYMaXth1mjPVNAMhAOjY/lZemQhuw6k1fMUUcjG0OWHH9J8Q/JMLiF0de/DmrW6i3qzsYK/HrRh2uQBT3Xi++Rt4Ito=
# continue:
# service: passport
# location: 2f736166652f
# needRand: 1
# isiframe: 1
# logintype: normal
# CSSStyle:
# autoLogin: 1
# username: 13348783892
# randimg: bc4a65d2a49a4bbfb0feb3482ec59f73;undefined
# isAICap: 1

import requests
import time
import random
import hashlib
import tkinter as tk
import execjs

with open("../爱奇艺登录/aiqiyi.js", "r") as f:
    js = f.read()
    ctx = execjs.compile(js)
a = ctx.call("rsaFun",'11111111')
print(a)
# def make_md5(string):
#     string = string.encode('utf-8')
#     md5 = hashlib.md5(string).hexdigest()
#     return md5
#
# def tar():
#     ts = str(int(time.time() * 1000))
#     salt = ts + str(random.randint(0, 9))
#     # t1.get()是获取界面输入的内容(有二维坐标之说)从0行0列到最后
#     sign = make_md5("fanyideskweb" + t1.get(0.0,'end') + salt + "n%A-rKaT5fb[Gy?;N5@Tj")
#     bv = make_md5('5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36')
#
#     url = 'http://fanyi.youdao.com/translate_o?smartresult=dict&smartresult=rule'
#     headers = {
#         'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36',
#         'Referer': 'http://fanyi.youdao.com/',
#         'Host': 'fanyi.youdao.com',
#         'Origin': 'http://fanyi.youdao.com',
#         'X-Requested-With': 'XMLHttpRequest',
#         'Cookie': 'OUTFOX_SEARCH_USER_ID=5370028@10.169.0.84; OUTFOX_SEARCH_USER_ID_NCOO=811010223.2979907; _ntes_nnid=634f2925d538907049e98d0aaa6fdf01,1578713408596; JSESSIONID=aaa8HzXt6sxGA7sB37Tax; ___rl__test__cookies=1581318654931'
#     }
#     date = {
#         'i': t1.get(0.0,'end'),
#         'from': 'AUTO',
#         'to': 'AUTO',
#         'smartresult': 'dict',
#         'client': 'fanyideskweb',
#         'salt': salt,
#         'sign': sign,
#         'ts': ts,
#         'bv': bv,
#         'doctype': 'json',
#         'version': '2.1',
#         'keyfrom': 'fanyi.web',
#         'action': 'FY_BY_REALTlME'
#     }
#     respon = requests.post(url,data=date,headers=headers).json()
#     # 先删后显示
#     t1.delete(0.0,'end')
#     respon = respon['translateResult'][0][0]['tgt']
#     t1.insert(0.0,respon)
#
# # 无界面 程序立即结束
# root = tk.Tk()
# # 设置界面大小 宽x高
# root.geometry('500x250')
# # 界面名字
# root.title('翻译小程序')
# # 提供一个点击按钮，内容，宽度,绑定他点击的意义
# b1 = tk.Button(root,text='一键翻译',width=8,command=tar)
# b1.pack()
# # 提供一个文本框
# t1 = tk.Text(root)
# t1.pack()
# # 使界面一直出现
# root.mainloop()