import requests,jsonpath,time
from urllib import parse
import threading

def sa():
    parmas = parse.quote('喇嘛服饰')

    gsm = '1e'

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36"
    }
    for i in range(1, 300):
        a = i * 30
        times = time.time() * 1000
        url = "https://image.baidu.com/search/acjson?tn=resultjson_com&ipn=rj&ct=201326592&is=&fp=result&queryWord={0}&cl=2&lm=-1&ie=utf-8&oe=utf-8&adpicid=&st=&z=&ic=&hd=&latest=&copyright=&word={0}&s=&se=&tab=&width=&height=&face=&istype=&qc=&nc=&fr=&expermode=&force=&pn={1}&rn=30&gsm={2}&{3}=".format(parmas,a,gsm,times)
        print('正在爬取第{}个喇嘛服饰'.format(i))
        res = requests.get(url,headers= headers).json()
        gsm = res["gsm"]
        print(gsm,url)
        image_names = jsonpath.jsonpath(res,'$..fromPageTitleEnc')
        image_urls = jsonpath.jsonpath(res,'$..middleURL')
        try:
            for image_url, image_name in zip(image_urls, image_names):
                header = {
                    "Accept-Encoding": "gzip, deflate",
                    "Accept-Language": "zh-CN,zh;q=0.9",
                    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36",
                    "Referer": "http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E9%98%BF%E6%8B%89%E4%BC%AF%E9%95%BF%E8%A2%8D%E5%9B%BE%E7%89%87&step_word=&hs=2&pn=0&spn=0&di=70400&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=0&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=2372483176%2C244910118&os=4105399667%2C441653852&simid=3436653695%2C261316953&adpicid=0&lpn=0&ln=914&fr=&fmq=1587141232776_R&fm=rs9&ic=undefined&s=undefined&hd=undefined&latest=undefined&copyright=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=%E9%98%BF%E6%8B%89%E4%BC%AF%E9%95%BF%E8%A2%8D&objurl=http%3A%2F%2Fwww.62a.net%2Ftbimg%2Fimg2%2Ftfscom%2Fi7%2FT1SS8WXXJyXXaIQg_a_091300.jpg_290x290.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3Bmdw_z%26e3BgjpAzdH3F4AzdH3Ff_z%26e3Brir%3Ft1%3Dc98dlcm8md90&gsm=1&rpstart=0&rpnum=0&islist=&querylist=&force=undefined"
                }
                time.sleep(0.5)
                response = requests.get(image_url,headers=header)
                print(response.status_code)
                a = image_name.replace('/', '').replace(' ', '').replace('"',"").replace('|,?','')
                print('正在爬取{}'.format(a))
                # a = 'D:/Users/snackdeng/Desktop/python练习题/爬虫基础课程/爬虫/scrapy框架/baidutupian/baidutupian/阿拉伯长袍/{}'.format(item['image_name'].replace(" ",''))
                try:
                    with open(r'D:\Users\snackdeng\Desktop\喇嘛服饰\{}.png'.format(a), 'wb') as f:
                        f.write(response.content)
                except OSError:
                    pass
        except TypeError:
            pass

def sds():
    parmas = parse.quote('阿拉伯服装女长袍')

    gsm = '3c'

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36"
    }
    for i in range(1, 300):
        i = i * 30
        times = time.time() * 1000
        url = "http://image.baidu.com/search/acjson?tn=resultjson_com&ipn=rj&ct=201326592&is=&fp=result&queryWord={0}&cl=2&lm=-1&ie=utf-8&oe=utf-8&adpicid=&st=-1&z=&ic=&hd=&latest=&copyright=&word={0}&s=&se=&tab=&width=&height=&face=&istype=&qc=&nc=1&fr=&expermode=&force=&pn={1}&rn=30&gsm={2}c&{3}=".format(
            parmas, i, gsm, times)
        print('正在爬取第{}个阿拉伯长袍图片'.format(i))
        res = requests.get(url, headers=headers).json()
        gsm = res["gsm"]
        print(gsm, url)
        image_names = jsonpath.jsonpath(res, '$..fromPageTitleEnc')
        image_urls = jsonpath.jsonpath(res, '$..middleURL')
        try:
            for image_url, image_name in zip(image_urls, image_names):
                header = {
                    "Accept-Encoding": "gzip, deflate",
                    "Accept-Language": "zh-CN,zh;q=0.9",
                    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36",
                    "Referer": "http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E9%98%BF%E6%8B%89%E4%BC%AF%E9%95%BF%E8%A2%8D%E5%9B%BE%E7%89%87&step_word=&hs=2&pn=0&spn=0&di=70400&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=0&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=2372483176%2C244910118&os=4105399667%2C441653852&simid=3436653695%2C261316953&adpicid=0&lpn=0&ln=914&fr=&fmq=1587141232776_R&fm=rs9&ic=undefined&s=undefined&hd=undefined&latest=undefined&copyright=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=%E9%98%BF%E6%8B%89%E4%BC%AF%E9%95%BF%E8%A2%8D&objurl=http%3A%2F%2Fwww.62a.net%2Ftbimg%2Fimg2%2Ftfscom%2Fi7%2FT1SS8WXXJyXXaIQg_a_091300.jpg_290x290.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3Bmdw_z%26e3BgjpAzdH3F4AzdH3Ff_z%26e3Brir%3Ft1%3Dc98dlcm8md90&gsm=1&rpstart=0&rpnum=0&islist=&querylist=&force=undefined"
                }
                time.sleep(0.5)
                response = requests.get(image_url, headers=header)
                print(response.status_code)
                a = image_name.replace('/', '').replace(' ', '').replace('"', "").replace('|,?', '')
                print('正在爬取{}'.format(a))
                # a = 'D:/Users/snackdeng/Desktop/python练习题/爬虫基础课程/爬虫/scrapy框架/baidutupian/baidutupian/阿拉伯长袍/{}'.format(item['image_name'].replace(" ",''))
                try:
                    with open(r'D:\Users\snackdeng\Desktop\阿拉伯长袍\{}.png'.format(a), 'wb') as f:
                        f.write(response.content)
                except OSError:
                    pass
        except TypeError:
            pass


def main():
    #target制定将来这个线程去那个函数执行
    #args指定将来调用函数的时候传递什么函数过去
    t1 = threading.Thread(target=sa)
    t2 = threading.Thread(target=sds)
    t1.start()
    t2.start()

if __name__ == '__main__':
    main()

