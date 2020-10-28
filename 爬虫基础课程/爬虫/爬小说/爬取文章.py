import requests,json
from lxml import etree


#请求的地址
url = 'https://www.lmonkey.com/essence'
headers = {
'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'
}

#发送请求
res = requests.get(url = url,headers = headers)
print(res.status_code)

#解析数据
html = etree.HTML(res.text)

#提取数据文章标题地址url  //a[contains(@href,"song?")]/@href
authors = html.xpath('//div[contains(@class,"old_content")]//div[contains(@class,"list-group-item-action")]//strong/a/text()')
titles = html.xpath('//div[contains(@class,"old_content")]//div[contains(@class,"list-group-item-action")]//div[contains(@class,"flex-fill")]//div/text()')
titleurl = html.xpath('//div[contains(@class,"old_content")]//div[contains(@class,"list-group-item-action")]//div[contains(@class,"flex-fill")]/a/@href')
print(authors,titleurl,titles)
data = []
for i in range(0,len(authors)):
    res = {'authors':authors[i],'titles':titles[i],'titleurl':titleurl[i]}
    data.append(res)
    url2 = res['titleurl']
    author = res['authors']
    print(url2)
    result = requests.get(url2,headers=headers).content
    with open(r'./wenzhang.{}text'.format(author),'wb') as py:
        py.write(result)