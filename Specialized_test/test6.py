import requests
import re
url = 'https://bam.nr-data.net/1/bd4e6041d0?a=190099556&v=1169.7b094c0&to=NQAAbUBQVhVZVhUIVgxKMVBGVFsJSlBBM1wTEAdKRh5rA1lHAgl/DgwFUUY%3D&rst=33808&ck=1&ref=https://www.jetstar.com/cn/zh/search-flights&ap=292&be=1406&fe=33183&dc=4599&af=err,xhr,stn,ins&perf=%7B%22timing%22:%7B%22of%22:1592900182595,%22n%22:0,%22f%22:22,%22dn%22:22,%22dne%22:22,%22c%22:24,%22s%22:278,%22ce%22:613,%22rq%22:614,%22rp%22:1352,%22rpe%22:1499,%22dl%22:1363,%22di%22:4227,%22ds%22:4599,%22de%22:4604,%22dc%22:33182,%22l%22:33183,%22le%22:33184%7D,%22navigation%22:%7B%7D%7D&fp=4119&fcp=4119&jsonp=NREUM.setToken'
headers = {
    "Host": "bam.nr-data.net",
    "Connection": "keep-alive",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36",
    "Accept": "*/*",
    "Sec-Fetch-Site": "cross-site",
    "Sec-Fetch-Mode": "no-cors",
    "Sec-Fetch-Dest": "script",
    "Referer": "https://www.jetstar.com/cn/zh/search-flights?origin=SIN&destination=HAK&flight-type=2&selected-departure-date=16-08-2020&selected-return-date=23-08-2020&adult=1&flexible=1&currency=SGD&sale-id=56978aa4-bc33-4bb0-90f8-9cd6258d9317",
    "Accept-Encoding": "gzip, deflate, br",
    "Accept-Language": "zh-CN,zh;q=0.9",
}
response = requests.get(url,headers=headers,verify=False)
a = response.headers['Set-Cookie'].split(';')[0].split('=')
cookies = {
    a[0] : a[1]
}
print(cookies)
# JSESSIONID=b276ffa875ba097e