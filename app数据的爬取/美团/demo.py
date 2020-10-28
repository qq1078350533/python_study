import requests
url = "https://report.meituan.com/"
headers = {
        "Accept-Charset": "UTF-8",
        "Accept-Encoding": "gzip",
        "Content-Type": "application/json;charset=UTF-8",
        "Content-Length": "32406",
        "Host": "report.meituan.com",
        "Connection": "Keep-Alive",
        "User-Agent": "okhttp/2.7.6"
}
response = requests.post(url=url,headers=headers).json()
print(response)