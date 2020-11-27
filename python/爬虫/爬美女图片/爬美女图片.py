from bs4 import BeautifulSoup
import urllib.request,parser

url = "https://www.buxiuse.com/"
x = 0
def crawl(url):
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36'}
    req = urllib.request.Request(url=url,headers=headers)#创建对象
    page = urllib.request.urlopen(req,timeout=20)#设置超时
    contents = page.read()#获取源码
    #print(contents)
    soup =BeautifulSoup(contents,'html.parser')
    my_girl = soup.find_all("img")#找到img标签
    for girl in my_girl:
        link = girl.get('src')#获取img标签下的src内容
        #print(link)
        global x#定义全局变量即名字
        urllib.request.urlretrieve(link,'image/{}.jpg'.format(x))#下载
        x += 1
        print("正在下载{}张".format(x))

crawl(url)