from urllib import parse
import re
import requests
import jsonpath

headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    "Host": "quanmin.baidu.com",
    "User-Agent": "Mozilla/5.0 (Linux; Android 5.1.1; V1938T Build/LMY47I; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.100 Mobile Safari/537.36 bdminivideo/1.15.5.10 arsdk/240 (Baidu; P1 5.1.1)"
}
# urls = input("请输入作者的url：")
urls = 'https://quanmin.hao222.com/feedvideoui/api?pd=author_share_mvideo&ucenter=ext%3D%257B%2522metiaId%2522%253A%2522I4lECuTh68ddbYXcYgD2Dg%2522%252C%2522authorType%2522%253A%2522ugc%2522%252C%2522authorId%2522%253A%2522I4lECuTh68ddbYXcYgD2Dg%2522%257D'
a = parse.unquote(str(parse.unquote(urls)))
"https://quanmin.baidu.com/mvideo/api?log=vhk&tn=1021212c&ctn=1021212c&imei=865166028232695&cuid=D943DE7DA8E57D42750CDA13415E4F55|0&bdboxcuid=null&os=android&osbranch=a0&ua=720_1280_240&ut=V1938T_5.1.1_22_vivo&uh=vivo,android_x86,V1938T,1&apiv=1.0.0.10&appv=123&version=1.15.5.10&life=1585029036&clife=1585029036&hid=82B092D4136FAA20ED5AD3F930A8451D&network=1&sids=2655_1&api_name=workspage&sign=cdbc339d53fd8384fb3c9b192f0bb601"
url = 'https://quanmin.baidu.com/mvideo/api?log=vhk&tn=1021212c&ctn=1021212c&imei=865166028232695&cuid=D943DE7DA8E57D42750CDA13415E4F55|0&bdboxcuid=null&os=android&osbranch=a0&ua=720_1280_240&ut=V1938T_5.1.1_22_vivo&uh=vivo,android_x86,V1938T,1&apiv=1.0.0.10&appv=123&version=1.15.5.10&life=1585029036&clife=1585029036&hid=82B092D4136FAA20ED5AD3F930A8451D&network=1&sids=2655_1&api_name=workspage&sign=25cb661e22f2854a334d73fae164945f'
# "workspage=ext={"authorId":"ZwQLBwOfbk0S9FAbg1MITw","metiaId":"1621901321899046","authorType":"media"}&refresh_state=0"
data = 'workspage=ext={"authorId":"' + re.findall('"authorId":"(\w+)"',a)[0] +'","metiaId":"'+ re.findall('"metiaId":"(\w+)"',a)[0] + '","authorType":"media"}&refresh_state=2'
requests.packages.urllib3.disable_warnings()
response = requests.post(url,data=data,headers = headers,verify=False).json()
vwdivs = response["workspage"]["data"]["worksList"]
for vwdiv in vwdivs:
    title = vwdiv["title"]
    playurl = vwdiv["playurl"]
    print(title,playurl)
    if title == "":
        title = 1
    c = requests.get(playurl,headers=headers,verify=False).content
    with open('./视频/{}.mp4'.format(title),'wb') as f:
        f.write(c)