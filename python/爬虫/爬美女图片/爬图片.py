# 0 导入库
import requests
import re
import time
str = input('请大佬输入想要的照片')
# 1确定url地址
url = 'https://image.baidu.com/search/flip?tn=baiduimage&word={str}'

# 2请求
resonse = requests.get(url).text
#print(resonse)

# 3删选
image_urls = re.findall('objURL":"(.*?)"',resonse)
print(image_urls)
for image_url in image_urls:
    image_name = image_url.split('/')[-1]
    image_end = re.search('(.jpg|.png|.jpeg|.gif|.tif|.ico)$',image_name)
    if image_end == None:
        image_name = image_name + '.jpg'
    image =  requests.get(image_url).content
    time.sleep(1)
# 4保存
    with open('./biaoqingbao/{}'.format(image_name),'wb') as f:
        f.write(image)