import requests
import re, threading

class Deng(threading.Thread):
    def __init__(self):
        self.session = requests.session()

    def register(self, i):
        url = "http://101.200.72.108/register"
        data = {
            'name': f'{i}',
            'password': '111111',
            'csrf_token': self.get(url),
        }
        res = self.session.post(url, data=data)
        if res.text == '该用户名已经被注册':
            print('注册失败')
            with open('./file.txt', 'w', encoding='utf-8') as f:
                f.write(f'{i}----111111')
        else:
            print('注册成功')
            with open('./sucess.txt', 'w', encoding='utf-8') as f:
                f.write(f'{i}----111111')

    def get(self, url):
        response = self.session.post(url)
        token = re.findall('name="csrf_token".*?value="(.*?)">', response.text)[0]
        return token

    def login(self):
        url = 'http://101.200.72.108/login'
        data = {
            'name': 'snackdeng',
            'password': '111111',
            'csrf_token': self.get(url),
        }
        res = self.session.post(self.url, data=data)
        print(res.text)

    def run(self):
        for i in range(0,100000000000000):
            self.register(i)

if __name__ == '__main__':
    Deng().run()
