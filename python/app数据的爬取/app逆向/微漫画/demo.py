import requests
import hashlib
import time

def encrypt(_string):
    _bstr = bytes(_string, encoding="utf-8")
    return hashlib.md5(_bstr).hexdigest()

timestamp = int(time.time()*1000)
phone_mark = "9783F209D56ECAE39A505D0E9470B279"

_string = "3.0.1" + "android" + str(timestamp) + "e571dd8bd67803995b9bdcfefb58662b" + phone_mark + "0" + "" + "{54563A97-2BBA-7F31-D4C1-8EF72F4A98E6}"
sign = encrypt(_string)
api = "http://api.manhua.weibo.com/client/home/search?word=美丽&page_num=1&row_num=10"

headers = {
    "client-ver": "3.0.1",
    "client-type": "android",
    "client-time":  f"{timestamp}",
    "phone-mark": phone_mark,
    "app-devicetoken": "e571dd8bd67803995b9bdcfefb58662b",
    "sina-uid": "0",
    "sina-token": "",
    "VREADREFER": "vmh_client",
    "client-sign": sign,
    "Cache-Control": "no-cache",
    "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
    "Content-Length": "223",
    "Host": "api.manhua.weibo.com",
    "Accept-Encoding": "gzip",
    "User-Agent": "okhttp/3.8.0",
    "Connection": "keep-alive",
}


data = f"client_ver=3.0.1&client_type=android&client_time={timestamp}&phone_mark={phone_mark}&app_devicetoken=e571dd8bd67803995b9bdcfefb58662b&sina_uid=0&sina_token=&client_sign={sign}"

response = requests.post(url=api, headers=headers, data=data, verify=False)
print(response.json())