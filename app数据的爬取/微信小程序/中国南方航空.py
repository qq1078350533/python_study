# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/20
"""
"""
POST /wxopen/bookProcess/avPrice/getAvPrice?appid=wx729238547ac7a14c&wxchannel=wxopen&APPTYPE=WXOPEN&chanel=wxopen&timeZone=GMT+08:00&osversion=Android5.1.1 HTTP/1.1
Host: m.csair.com
Connection: keep-alive
Content-Length: 140
sessionid: wxopen_a9d244fa-62f6-4946-bea0-0e67b0e5ed7fd32ff9b6-e901-449e-8985-8837f8153d2e
charset: utf-8
content-type: application/json
User-Agent: Mozilla/5.0 (Linux; Android 5.1.1; OPPO R17 Pro Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/74.0.3729.136 Mobile Safari/537.36 MMWEBID/9729 MicroMessenger/7.0.15.1680(0x27000F34) Process/appbrand0 WeChat/arm32 NetType/WIFI Language/zh_CN ABI/arm32
unnecessaryparam: oJ5UI0T9bxN0_9fSZ-X9kHUXC0hk
Accept-Encoding: gzip,compress,br,deflate
Referer: https://servicewechat.com/wx729238547ac7a14c/134/page-frame.html

{"adultNum":1,"childNum":0,"infantNum":0,"date":"20200621","depCityFlag":true,"arrCityFlag":true,"cities":{"depCity":"CSX","arrCity":"BJS"}}"""
import requests
# 'https://m.csair.com/wxopen/bookProcess/avPrice/getAvPrice?appid=wx729238547ac7a14c&wxchannel=wxopen&APPTYPE=WXOPEN&chanel=wxopen&timeZone=GMT+08:00&osversion=Android5.1.1'
url = "https://m.csair.com/wxopen/bookProcess/avPrice/getAvPrice?appid=wx729238547ac7a14c&wxchannel=wxopen&APPTYPE=WXOPEN&chanel=wxopen&timeZone=GMT+08:00&osversion=Android5.1.1"
data = {
    "adultNum": 1,
    "childNum": 0,
    "infantNum": 0,
    "date": "20200621",
    "depCityFlag": True,
    "arrCityFlag": True,
    "cities": {
        "depCity": "CSX",
        "arrCity": "BJS"
    }
}
headers = {"Host": "m.csair.com",
           "Connection": "keep-alive",
           "Content-Length": "140",
           "sessionid": "wxopen_dc2c68be-b37d-4fee-8813-05dbb9e3ed891c5a64ea-82a7-427a-9e30-bf360cceed05",
           "charset": "utf-8",
           "content-type": "application/json",
           "User-Agent": "Mozilla/5.0 (Linux; Android 5.1.1; OPPO R17 Pro Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/74.0.3729.136 Mobile Safari/537.36 MMWEBID/9729 MicroMessenger/7.0.15.1680(0x27000F34) Process/appbrand1 WeChat/arm32 NetType/WIFI Language/zh_CN ABI/arm32",
           "unnecessaryparam": "oJ5UI0T9bxN0_9fSZ-X9kHUXC0hk",
           "Accept-Encoding": "gzip,compress,br,deflate",
           "Referer": "https://servicewechat.com/wx729238547ac7a14c/134/page-frame.html"
           }
response = requests.post(url=url, headers=headers, data=data, verify=False).json()
print(response)