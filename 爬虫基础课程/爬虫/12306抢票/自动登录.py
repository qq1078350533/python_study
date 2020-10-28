import requests

session = requests.session()
yzm_url = 'https://kyfw.12306.cn/passport/captcha/captcha-image?'
data = {
    'login_site': 'E',
    'module': 'login',
    'rand': 'sjrand'
}
req = session.get(yzm_url,params=data)
with open('验证码.png','wb') as f:
    f.write(req.content)

point_map = {
    "1":'34,40',
    "2":'110,40',
    "3":'181,47',
    "4":'250,47',
    "5":'35,117',
    "6":'110,114',
    "7":'181,114',
    "8":'250,114'
}
def get_point(index):
    indexs = index.split(',')
    temp = []
    for index in indexs:
        temp.append(point_map[index])
    return ','.join(temp)

code = get_point(input('请输入验证码的序号：'))

data = {
'answer': code,
'rand': 'sjrand',
'login_site': 'E'
}
cheak_url = 'https://kyfw.12306.cn/passport/captcha/captcha-check?'
req = session.get(cheak_url,params=data)
print(req.text)