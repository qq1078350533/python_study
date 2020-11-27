# import requests
# import re
#
# headers = {
# 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36'
# }
# url = 'https://image.baidu.com/search/acjson?tn=resultjson_com&ipn=rj&ct=201326592&is=&fp=result&queryWord=%E6%98%93%E7%83%8A%E5%8D%83%E7%8E%BA%E5%86%99%E7%9C%9F%E7%85%A7&cl=2&lm=-1&ie=utf-8&oe=utf-8&adpicid=&st=&z=&ic=&hd=&latest=&copyright=&word=%E6%98%93%E7%83%8A%E5%8D%83%E7%8E%BA%E5%86%99%E7%9C%9F%E7%85%A7&s=&se=&tab=&width=&height=&face=&istype=&qc=&nc=&fr=&expermode=&force=&pn=60&rn=30&gsm=&1578747072503='
# response = requests.get(url,headers=headers)
# text = response.text
# # print(text)
# image_urls = re.findall('thumbURL":"(.*?)"',text)
# print(image_urls)
#
# ipn: rj
# ct: 201326592
# is:
# fp: result
# queryWord: 易烊千玺写真照
# cl: 2
# lm: -1
# ie: utf-8
# oe: utf-8
# word: 易烊千玺写真照
# pn: 30
# rn: 30
# gsm:
# 1578747072217:
#
# ipn: rj
# ct: 201326592
# is:
# fp: result
# queryWord: 易烊千玺写真照
# cl: 2
# lm: -1
# ie: utf-8
# oe: utf-8
# word: 易烊千玺写真照
# pn: 60
# rn: 30
# gsm:
# 1578747072503: