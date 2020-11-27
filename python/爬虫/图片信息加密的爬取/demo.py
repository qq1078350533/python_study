import requests

from urllib.parse import urljoin
import io
import pytesseract
# import Image
from PIL import Image
from lxml import etree

url = "http://www.porters.vip/confusion/recruit.html"

res = requests.get(url).text
# print(res)
html = etree.HTML(res)
image_name = html.xpath('//img[@class="pn"]/@src')[0]
#   获取图片url
image_url = urljoin(url,image_name)
# 获取二进制文件
image_boby = requests.get(image_url).content
# 获取对象
image_stream = Image.open(io.BytesIO(image_boby))
# 打印结果
print(pytesseract.image_to_string(image_stream))


