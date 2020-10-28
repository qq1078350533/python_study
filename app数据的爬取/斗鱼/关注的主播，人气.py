import requests
url = 'https://apiv3.douyucdn.cn/mgapi/livenc/mcenter/followRoomsOnlineV2?client_sys=android'
data = {
        'type':1,
        'offset':0,
        'limit':20,
        'token':'77455306_12_3b044dd529cc8568_1_67961148'
}
headers = {
    'x-dy-traceid':'7d0f82dd38e9d380:7d0f82dd38e9d380:0:021622',
    'Content-Length':'70',
    'Connection':'Keep-Alive',
    'time':'1584890649',
    'channel':'90',
    'aid':'android1',
    'auth':'d8aa4d96676ac3c05050cfc322607036',
    'Content-Type':'application/x-www-form-urlencoded',
    'Accept-Encoding':'gzip',
    'Host':'apiv3.douyucdn.cn',
    'User-Device':'MzY1Y2ZmOWFhZGYzNzIxZTA5MzY1YmI5ODA5MDUxMTF8djYuMC45',
    'User-Agent': 'android/6.0.9 (android 7.1.2; ; MI+9)',
    'Cookie':'acf_uid=77455306; acf_did=365cff9aadf3721e09365bb980905111'
}
response = requests.post(url,data=data,headers=headers).json()
print(response)

