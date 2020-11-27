# __author__ = "zok" 362416272@qq.com
# Date: 2020/7/24 Python:3.7

import requests
import time
import random
import json
import base64
from datetime import datetime
from Crypto import des3


class WenShu:

    def __init__(self):
        self.js = None

    @staticmethod
    def get_now_data():
        """时间
        """
        return datetime.now().strftime('%Y%m%d')

    @staticmethod
    def random_key():
        """字符串
        """
        random_str = ''
        base_str = 'ABCDEFGHIGKLMNOPQRSTUVWXYZabcdefghigklmnopqrstuvwxyz0123456789'
        length = len(base_str) - 1
        for i in range(24):
            random_str += base_str[random.randint(0, length)]
        return random_str

    @staticmethod
    def make_id():
        """id
        """
        return datetime.now().strftime('%Y%m%d%H%M%S')

    def make_cipher_text(self):
        """生成 ciphertext
        """
        time_13 = str(int(round(time.time() * 1000)))
        key = self.random_key()
        now = self.get_now_data()
        _str = des3.encryption(time_13, key, now)
        _str = key + now + _str
        print(_str)
        new_str = ''
        for i in _str:
            if i != 1:
                new_str += " "
            new_str += str(bin(ord(i))[2:])
        print(new_str)
        msg = """【key生成】: {key}\n【now生成】: {now}\n【_str生成】: {_str}\n【ciphertext生成】: {ciphertext}""".format(key=key, now=now, _str=_str, ciphertext=new_str)
        print(msg)

        return new_str.strip()

    def make_request(self):
        """生成明文的请求 data 内容
        【这里需要根据实际需求修改请求内容】自行抓包研究！！
        """
        info = {
            "id": self.make_id(),  # 年月日时分秒
            "command": "queryDoc",  # 固定
            "params": {
                "devid": "41d861ffe5b347d28454dc3f07dd4212",  # 设备号
                "devtype": "1",
                "ciphertext": self.make_cipher_text(),
                "pageSize": "20",
                "sortFields": "s50:desc",  # 固定
                "pageNum": "1",
                "queryCondition": [{
                    "key": "腾讯",
                    "value": "02"
                }]  # 关键词 + 搜索文本的类型；
            }
        }
        return info

    def to_index(self):
        url = 'http://wenshuapp.court.gov.cn/appinterface/rest.q4w'
        headers = {
            'Content-Type': 'application/x-www-form-urlencoded',
            'User-Agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Mobile Safari/537.36',
            'Host': 'wenshuapp.court.gov.cn',
            'Connection': 'Keep-Alive',
            'Accept-Encoding': 'gzip',
        }
        txt = str(self.make_request())

        request = base64.b64encode(txt.encode('utf-8')).decode('utf-8')
        data = {
            'request': request
        }
        msg = """【明文请求体】： {txt}\n【密文请求体】： {data}\n【官网速度较慢，耐心等待】....""".format(txt=txt, data=data)
        print(msg)
        response = requests.post(url, headers=headers, data=data)
        if 'HTTP Status 503' in response.text:
            print('【服务器繁忙】 爬的人太多了， 请重试')
            exit()
        data = json.loads(response.text)
        content = data.get('data').get('content')
        key = data.get('data').get('secretKey')
        iv = self.get_now_data()
        msg = """【页面访问结果】： {text}\n【捕获key】：{key}\n【捕获iv】：{iv}\n【捕获content】：{content}""".format(text=response.text, key=key, iv=iv, content=content)
        print(msg)
        self.parse_html(content, key, iv)

    def parse_html(self, content, key, iv):
        _str = des3.decrypt(content, key, iv)
        print("【解密返回结果】：", _str)


if __name__ == '__main__':
    ws = WenShu()
    ws.to_index()
