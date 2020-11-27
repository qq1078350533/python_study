from urllib import request
from urllib import parse
'''
url.parse :定义了url的标准接口，实现url的各种抽取
parse模块的使用：url的解析，合并，编码，解码
使用时需导入
'''



# urlparse()实现URL的识别和分段
url = 'https://book.qidian.com/info/1004608738?wd=123&page=20#Catalog'
"""
url：待解析的url
scheme=''：假如解析的url没有协议,可以设置默认的协议,如果url有协议，设置此参数无效
allow_fragments=True：是否忽略锚点,默认为True表示不忽略,为False表示忽略
"""
result = parse.urlparse(url=url,scheme='http',allow_fragments=True)

print(result)
print(result.scheme)
"""
(scheme='https', netloc='book.qidian.com', path='/info/1004608738', params='', query='wd=123&page=20', fragment='Catalog')
scheme:表示协议
netloc:域名
path:路径
params:参数
query:查询条件，一般都是get请求的url
fragment:锚点，用于直接定位页
面的下拉位置，跳转到网页的指定位置
"""


# urlunparse()可以实现URL的构造
url_parmas = ('https', 'book.qidian.com', '/info/1004608738', '', 'wd=123&page=20', 'Catalog')
#components:是一个可迭代对象，长度必须为6
result = parse.urlunparse(url_parmas)
print(result)

"""
https://book.qidian.com/info/1004608738?wd=123&page=20#Catalog
"""


# urljoin()传递一个基础链接,根据基础链接可以将某一个不完整的链接拼接为一个完整链接
base_url = 'https://book.qidian.com/info/1004608738?wd=123&page=20#Catalog'
sub_url = '/info/100861102'

full_url = parse.urljoin(base_url,sub_url)



# urlencode()将字典构形式的参数序列化为url编码后的字符串（常用来构造get请求和post请求的参数）k1=v1&k2=v2
baseUrl = 'https://h5api.m.taobao.com/h5/mtop.taobao.detail.getdetail/6.0/?'
headers = {
            'cookie': 'miid=1277563255283569875; cna=rx8fFasEcgICAXWIHY4eofTh; hng=CN%7Czh-CN%7CCNY%7C156; thw=cn; tracknick=%5Cu7765%5Cu7768%5Cu5929%5Cu4E0B%5Cu65E0%5Cu4EBA%5Cu80FD%5Cu53CA; _cc_=VT5L2FSpdA%3D%3D; tg=0; enc=Iw0GcbRCAlrvg9bEQiwUp4mbgfSt6Wg8DWwznVwZZnhpdt8UT%2Bmrcwwh9jhnj6sCZKqP93H3n7gJKxHpUjPJqA%3D%3D; x=e%3D1%26p%3D*%26s%3D0%26c%3D0%26f%3D0%26g%3D0%26t%3D0%26__ll%3D-1%26_ato%3D0; t=0f91ed61b2641d1384fa4d8980054827; cookie2=59cc2c40440e818cd9823fc1675c2c76; _samesite_flag_=true; _tb_token_=f35fed77e1d80; v=0; _m_h5_tk=91fdf43f6daafe81b9db6fd30328e7dc_1581916621061; _m_h5_tk_enc=19cc889a0785a17f3eb3105def860f76; l=cB_TEszcvDFGNeh_BOfNRurza77OBKOjCsPzaNbMiIB195CamdPJ_HwEe_9yL3QQE953cHtPjiOhPRn28zz38ARAybYAM6pgm; isg=BPb2HeBZtAuoBUJ0satYqZAbRyz4FzpRIjLz0GDf4ll0o5Y9yKeKYVxRv3nPEDJp',
            'referer': 'https://detail.m.tmall.com/item.htm?id=610872082401',
            'user-agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Mobile Safari/537.36'
        }
params = {
    "jsv": "2.4.8",
    "appKey": "12574478",
    "t": "1581913294248",
    "sign": "80b83e28e55f8a061fc4fe1799675e83",
    "api": "mtop.taobao.detail.getdetail",
    "v": "6.0",
    "dataType": "jsonp",
    "ttid": "2017%40taobao_h5_6.6.0",
    "AntiCreep": "true",
    "type": "jsonp",
    "callback": "mtopjsonp2",
    'data': '{"itemNumId":"%s"}' % nid

}
parmas_str = parse.urlencode(parmas)

print(parmas_str)

"""
page=20&wd=123
"""

# parse_qs()将url编码格式的参数反序列化为字典类型
parmas_str = 'page=20&wd=123'
parmas = parse.parse_qs(parmas_str)
print(parmas)

"""
{'page': ['20'], 'wd': ['123']}
"""



# quote()可以将中文转换为URL编码格式
word = '中国梦'
url = 'http://www.baidu.com/s?wd='+parse.quote(word)
print(parse.quote(word))
print(url)

"""
%E4%B8%AD%E5%9B%BD%E6%A2%A6
http://www.baidu.com/s?wd=%E4%B8%AD%E5%9B%BD%E6%A2%A6
"""
# unquote:可以将URL编码进行解码
url = 'http://www.baidu.com/s?wd=%E4%B8%AD%E5%9B%BD%E6%A2%A6'
print(parse.unquote(url))
"""
http://www.baidu.com/s?wd=中国梦
"""