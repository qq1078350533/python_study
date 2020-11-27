# 0导入库
import requests
import re

# 1 确定url地址
url = 'https://www.doutula.com/photo/list/?page=2'

# 2 请求
response = requests.get(url).text
#print(response)

# 3删选(正则表达式）
image_urls = re.findall('data-original="(.*?)"',response)
#print(image_urls)
for image_url in image_urls:
    print(image_url)
    image = requests.get(image_url).content

    image_name = image_url.split('/')[-1]
# 4保存
    with open('./biaoqingbao/{}'.format(image_name),'wb') as f:
        f.write(image)