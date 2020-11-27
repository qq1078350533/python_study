from fontTools.ttLib import TTFont
import requests

# 下载过来的原文件
font = TTFont("DY.woff")
# 转化之后的新文件
font.saveXML("font.xml")
# 提取的文件内容
best_map = font['cmap'].getBestCmap()
print(best_map)
# 如果存在进制问题 就需要转化(这里是10进制转16进制)
new_best_map = {}
for key, value in best_map.items():
    new_best_map[hex(key)] = value

new_map = {
    'x':'',
    'num_':'1',
    'num_1':'0',
    'num_2':'3',
    'num_3':'2',
    'num_4':'4',
    'num_5':'5',
    'num_6':'6',
    'num_7':'9',
    'num_8':'7',
    'num_9':'8'
}

new_date = {}
for k,v in new_best_map.items():
    new_date[k] = new_map[v]

rs = {}
for k,v in new_date.items():
    rs['&#' + k[1:] + '; '] = v

headers = {
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'
}

response = requests.get('https://www.iesdouyin.com/share/user/98972549111?u_code=15g3m1ee0&sec_uid=MS4wLjABAAAAXhkm1-uqdUOfFXVWOFQqgzkcNZ9d8F2FdvHMW-zDhx0&timestamp=1580562483&utm_source=copy&utm_campaign=client_share&utm_medium=android&share_app_name=douyin',headers = headers).text

for  k,v in rs.items():
    if k in response:
        response = response.replace(k,v)

print(response)

with open("dy.html",'w',encoding='utf-8') as f:
    f.write(response)