import requests
import time
from lxml import etree
urls = ['https://www.x23us.com/html/77/77156/{}.html'.format(i) for i in range(34450975,34450995)]
path = r'./小说/'
def get_text(url):
    r = requests.get(url)
    r.encoding = 'utf-8'
    selector = etree.HTML(r.text)
    #获取文章标题
    title = selector.xpath('//*[@id="amain"]/dl/dd[1]/h1/text()')
    #获取小说内容
    text = selector.xpath('//*[@id="contents"]/text()')
    time.sleep(10)
    with open(path + title[0],'w',encoding='UTF-8') as f:
        for i in text:
            f.write(i)
if __name__ == '__main__':
    for url in urls:
        get_text(url)
        time.sleep(10)