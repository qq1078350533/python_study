#0,导入库
import requests
import time
#1,确认url
url = 'https://api.live.bilibili.com/msg/send'

#4请求体
def messager(msg_to):
    data = {
        'color':'16777215',
        'fontsize':'25',
        'mode':'1',
        'msg':msg_to,
        'rnd': '1575893378',
        'roomid':'10136539',
        'bubble':'0',
        'csrf_token':'098b9ba4c65f3a7725442538f693d9e8',
        'csrf':'098b9ba4c65f3a7725442538f693d9e8'
    }
    return data
#3设置cookie
headers = {'Cookie':'INTVER=1; _uuid=86105202-0550-1C19-AB6C-BC571F7F2BA862955infoc; buvid3=D151016D-19B7-478B-885D-AF4F994DE26D155838infoc; LIVE_BUVID=AUTO5015758894963962; sid=ipabj3jh; DedeUserID=94245276; DedeUserID__ckMd5=02731254efc3a8a4; SESSDATA=cf2698bc%2C1578481535%2C8cea02c1; bili_jct=098b9ba4c65f3a7725442538f693d9e8; _dfcaptcha=f163fe80f8d43f4b148d9af81472df56; GIFT_BLOCK_COOKIE=GIFT_BLOCK_COOKIE; Hm_lvt_8a6e55dbd2870f0f5bc9194cddf32a02=1575889498,1575889498,1575890862; Hm_lpvt_8a6e55dbd2870f0f5bc9194cddf32a02=1575890896'}

msg_list = ['主播666','关注主播很久了','很喜欢','66666','这就尴尬了','为哈','别问我是谁']

for msg in msg_list:
    data_result = messager(msg)
    time.sleep(2)
    #2，请求
    text = requests.post(url,headers=headers,data=data_result).text
    print(text)


