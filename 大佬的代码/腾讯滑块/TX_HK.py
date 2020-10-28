# Time : 2020/1/4 18:59
# By vilker
# qq: 5353761

import json
import os
import ssl
import time
from urllib import request
import re
import urllib
import base64
import PIL
from PIL import Image
from selenium.webdriver import ActionChains
import jsonpath as jsonpath
import requests
import numpy as np
import random
from urllib.request import urlretrieve
from selenium.webdriver import Chrome
import cv2
from selenium.webdriver import ChromeOptions
from browsermobproxy import Server
import telnetlib
path =''
server = Server("C:\\Users\\Vilker\\Desktop\\browsermob-proxy-2.1.4\\bin\\browsermob-proxy.bat")
server.Start()
class Start(object):

    def initialize(self):
        proxylist = self.getproxy()
        ip = proxylist[0]
        port = proxylist[1]
        proxy_ip_code=str(ip)+':'+str(port)
        proxy_ip = {"httpProxy": ""}
        proxy_ip['httpProxy'] = proxy_ip_code
        self.proxy = server.create_proxy(proxy_ip)
        self.UA_code=self.ua_list()
        self.UA = '--user-agent=' + self.UA_code
        self.un_cookie=self.get_cookie(ip,port)
        print(self.un_cookie)
        url = self.get_txurl(ip, port)
        option = ChromeOptions()
        option.binary_location=r"C:\Users\Vilker\AppData\Local\Google\Chrome\Application\chrome.exe"
        option.add_argument('--disable-infobars')
        option.add_argument(self.UA)
        #option.add_argument('--headless')  # 无界面浏览开启
        option.add_argument('--proxy-server={0}'.format(self.proxy.proxy))
        self.proxy.new_har("vilker", options={'captureContent': True})
        self.driver = Chrome(options=option,executable_path=r'C:\Users\Vilker\AppData\Local\Programs\Python\chromedriver.exe')
        self.driver.set_window_size(400, 600)
        self.driver.get(url=url)
        self.tx_main()

    def get_ua(self):
        UA_CODE = self.ua_list()
        UA_STR = str.encode(UA_CODE)
        UA = base64.b64encode(UA_STR).decode('utf-8')
        return UA

    def get_cookie(self,ip, port):
        ssl._create_default_https_context = ssl._create_unverified_context
        t=time.time()
        proxies = {
            "https": "https://182.107.206.153:4213",
            "http": "http://182.107.206.153:4213"
        }
        ip_code0 = "https://" + ip + ":" + port
        ip_code1 = "http://" + ip + ":" + port
        proxies["https"] = ip_code0
        proxies["http"] = ip_code1
        url='http://upay.10010.com/npfwap/NpfMob/needCode?channelType=307&='+str(int(round(t * 1000)))
        headers_code={
            'Host':'upay.10010.com',
            'Connection': 'keep-alive',
            'Accept': 'text/plain, */*; q=0.01',
            'X-Requested-With': 'XMLHttpRequest',
            'User-Agent': '',
            'Referer': 'http://upay.10010.com/npfwap/npfMobWap/bankcharge/index.html?version=wap',
            'Accept-Encoding': 'gzip, deflate',
            'Accept-Language': 'zh-CN,zh;q=0.9',
            'Cookie': 'MUT_V=wap; HISPAGE=default'
        }
        headers_code['User-Agent']=self.UA_code
        req=requests.get(proxies=proxies,url=url,headers=headers_code)
        send_code = req.headers['Set-Cookie']
        send = re.findall('(.+?); domain', send_code)
        lag = send[0]
        lag=lag[10:]
        return lag

    def get_asig(self,ip, port):
        url = 'http://upay.10010.com/npfwap/NpfMob/VerifyCodeNew/getUrl'
        data_code = {
            'channelType': '307'
        }
        data = urllib.parse.urlencode(data_code).encode('utf-8')
        headers_code = {'Host': 'upay.10010.com',
                        'Connection': 'keep-alive',
                        'Content-Length': '15',
                        'Accept': 'application/json, text/javascript, */*; q=0.01',
                        'Origin': 'http://upay.10010.com',
                        'X-Requested-With': 'XMLHttpRequest',
                        'User-Agent': '',
                        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
                        'Referer': 'http://upay.10010.com/npfwap/npfMobWap/bankcharge/index.html?version=wap',
                        'Accept-Encoding': 'gzip, deflate',
                        'Accept-Language': 'zh-CN,zh;q=0.9',
                        'Cookie': 'MUT_V=wap; HISPAGE=default'
                        }
        UA = self.ua_list()
        proxy_ip =ip + ':' + port
        proxy_addr = {'https': proxy_ip}
        proxy = request.ProxyHandler(proxy_addr)
        opener = request.build_opener(proxy)
        headers_code['User-Agent'] = UA
        req = urllib.request.Request(url, data, headers_code)
        html = json.loads(opener.open(req).read().decode('utf-8'))
        AsignUrl = (html['jsUrl'])
        Asign_code = re.findall(r'asig=(.+?)$', AsignUrl)
        Asign = Asign_code[0]
        return Asign

    def get_txurl(self,ip, port):
        proxies = {
            "https": "https://182.107.206.153:4213",
            "http": "http://182.107.206.153:4213"
        }
        ip_code0 = "https://" + ip + ":" + port
        ip_code1 = "http://" + ip + ":" + port
        proxies["https"] = ip_code0
        proxies["http"] = ip_code1
        ua_code = self.get_ua()
        handurl = 'https://captcha.guard.qcloud.com/cap_union_prehandle?'
        asig = 'asig=' + self.get_asig(ip, port)
        msg_1 = '&aid=1252323825&captype=&protocol=https&clientype=1&disturblevel=&apptype=&noheader=&color=FF8C00&showtype=popup&fb=1&theme=&lang=2052'
        UA = '&ua=' + ua_code
        msg_2 = '&cap_cd=&uid='
        rand = self.randcode('5')
        callback = '&callback=_aq_8' + rand
        msg_3 = '&sess=&subsid=1'
        URL = handurl + asig + msg_1 + UA + msg_2 + callback + msg_3
        print(URL)
        r = requests.get(proxies=proxies, url=URL)
        sess_sid = str(r.text)
        sess_code = re.findall(r'"sess":"(.+?)","sid', sess_sid)
        sid_code = re.findall(r'"sid":"(.+?)"}', sess_sid)
        sess = '&sess=' + str(sess_code[0])
        sid = '&sid=' + str(sid_code[0])
        tx_msg_1 = '&fwidth='
        tx_msg_2 = '&subsid=2&uid=&cap_cd='
        tx_msg_3 = '&forcestyle=undefined&wxLang='
        rnd = '&rnd=' + self.randcode('5')
        t = time.time()
        createIframeStart = '&createIframeStart=' + str(int(round(t * 1000)))
        TCapIframeLoadTime = '&TCapIframeLoadTime=' + self.randcode('3')
        prehandleLoadTime = '&prehandleLoadTime=' + self.randcode('3')
        TXURLCODE = 'https://captcha.guard.qcloud.com/cap_union_new_show?'
        TXURL = TXURLCODE + asig + msg_1 + UA + sess + tx_msg_1 + sid + tx_msg_2 + rnd + tx_msg_3 + TCapIframeLoadTime + prehandleLoadTime + createIframeStart
        print(TXURL)
        return TXURL

    def tx_main(self):
        driver = self.driver
        proxy = self.proxy
        bk_block = driver.find_element_by_xpath('//*[@id="bkBlock"]') 
        web_image_width = bk_block.size
        web_image_width = web_image_width['width']
        bk_block_x = bk_block.location['x']
        slide_block = driver.find_element_by_xpath('//img[@id="slideBlock"]')  
        slide_block_x = slide_block.location['x']
        bk_block = driver.find_element_by_xpath('//img[@id="bkBlock"]').get_attribute('src')  
        slide_block = driver.find_element_by_xpath('//img[@id="slideBlock"]').get_attribute('src')  
        slid_ing = driver.find_element_by_xpath('//div[@id="tcaptcha_drag_thumb"]')  
        os.makedirs('./image/', exist_ok=True)
        self.urllib_download(bk_block, './image/bkBlock.png')
        self.urllib_download(slide_block, './image/slideBlock.png')
        try:
            img_bkblock = PIL.Image.open('./image/bkBlock.png')
        except IOError:
            print('图片加载失败')
            return
        else:
            print('图片加载正常')

        real_width = img_bkblock.size[0]
        width_scale = float(real_width) / float(web_image_width)
        print(width_scale)
        position = self.get_postion('./image/bkBlock.png', './image/slideBlock.png')
        real_position = position[1] / width_scale
        print(real_position)
        if real_position < 260.0:
            driver.find_element_by_id('reload').click()
            self.tx_main()
            return
        real_position = real_position - (slide_block_x - bk_block_x)
        track_list = self.get_track(real_position + 8)
        ActionChains(driver).click_and_hold(on_element=slid_ing).perform()  
        print(track_list)
        for track in track_list:
            ActionChains(driver).move_by_offset(xoffset=track, yoffset=0).perform()  
            time.sleep(random.randint(1, 10) * 0.002)
        ActionChains(driver).move_by_offset(xoffset=-random.randint(0, 1), yoffset=0).perform()  
        ActionChains(self.driver).move_by_offset(xoffset=-1, yoffset=0).perform()
        ActionChains(self.driver).move_by_offset(xoffset=1, yoffset=0).perform()
        ActionChains(driver).release(on_element=slid_ing).perform()
        time.sleep(2)
        result = proxy.har
        for entry in result['log']['entries']:
            _url = entry['request']['url']
            if "https://captcha.guard.qcloud.com/cap_union_new_verify" in _url:
                try:
                    _response = entry['response']['content']['text']
                    ticket_code = json.loads(_response)
                    ticket = str(ticket_code['ticket'])
                    if len(ticket)==76:
                        un_ticket = ticket
                        un_cookie=self.un_cookie
                        print('ticket:'+str(un_ticket))
                except BaseException:
                    driver.find_element_by_id('reload').click()
                    self.tx_main()

        server.stop()
        driver.quit()
        proxy.close()



    @staticmethod
    def get_postion(chunk, canves):

        otemp = chunk
        oblk = canves
        target = cv2.imread(otemp, 0)
        template = cv2.imread(oblk, 0)
        temp = 'temp.jpg'
        targ = 'targ.jpg'
        cv2.imwrite(temp, template)
        cv2.imwrite(targ, target)
        target = cv2.imread(targ)
        target = cv2.cvtColor(target, cv2.COLOR_BGR2GRAY)
        target = abs(255 - target)
        cv2.imwrite(targ, target)
        target = cv2.imread(targ)
        template = cv2.imread(temp)
        result = cv2.matchTemplate(target, template, cv2.TM_CCOEFF_NORMED)
        x, y = np.unravel_index(result.argmax(), result.shape)
        print(x,y)
        return x, y

    @staticmethod
    def get_track(distance):
        v = 0
        t = 0.2
        tracks = []
        current = 0
        mid = distance * 7 / 8
        var=random.randint(15, 22)
        distance += var  
        while current < distance:
            if current < mid:
                a = random.randint(10, 20) 
            else:
                a = -random.randint(10, 25) 
            v0 = v
            s = v0 * t + 0.5 * a * (t ** 2)
            current += s
            tracks.append(round(s))
            v = v0 + a * t

        for i in range(6):
            tracks.append(-random.randint(2, 3))
        for i in range(6):
            tracks.append(-random.randint(1, 3))
        return tracks

    @staticmethod
    def urllib_download(imgurl, imgsavepath):
        urlretrieve(imgurl, imgsavepath)
        time.sleep(1.5)

    def getproxy(self):
        # 获取代理ip与端口
        proxyurl = ''
        getjson = requests.get(proxyurl).text
        content = json.loads(getjson)
        proxyip = str(jsonpath.jsonpath(content, '$..ip')[0])
        proxyport = str(jsonpath.jsonpath(content, '$..port')[0])

        try:
            telnetlib.Telnet(proxyip, proxyport, timeout=1)
            print('代理ip有效！')
            return proxyip, proxyport
        except:
            print("代理ip无效！")
            print(proxyip, proxyport)
            self.getproxy()

    @staticmethod
    def randcode(Mun):
        rand_code = ''
        if Mun == '3':
            for i in range(3):
                ch = chr(random.randrange(ord('0'), ord('9')))
                rand_code += ch
            return rand_code
        else:
            for i in range(5):
                ch = chr(random.randrange(ord('0'), ord('9')))
                rand_code += ch
            return rand_code

    @staticmethod
    def ua_list():
        list = [
            'Mozilla/5.0 (Linux; U; Android 8.1.0; zh-cn; BLA-AL00 Build/HUAWEIBLA-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/8.9 Mobile Safari/537.36',
            'Mozilla/5.0 (Linux; Android 8.1.0; ALP-AL00 Build/HUAWEIALP-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.11 (Baidu; P1 8.1.0)',
            'Mozilla/5.0 (Linux; U; Android 8.0.0; zh-CN; MHA-AL00 Build/HUAWEIMHA-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.1.4.994 Mobile Safari/537.36',
            'Mozilla/5.0 (Linux; U; Android 8.0.0; zh-CN; MHA-AL00 Build/HUAWEIMHA-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/40.0.2214.89 UCBrowser/11.6.4.950 UWS/2.11.1.50 Mobile Safari/537.36 AliApp(DingTalk/4.5.8) com.alibaba.android.rimet/10380049 Channel/227200 language/zh-CN',
            'Mozilla/5.0 (Linux; Android 8.0; MHA-AL00 Build/HUAWEIMHA-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/6.2 TBS/044304 Mobile Safari/537.36 MicroMessenger/6.7.3.1360(0x26070333) NetType/4G Language/zh_CN Process/tools',
            'Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16A366 MicroMessenger/6.7.3(0x16070321) NetType/WIFI Language/zh_CN',
            'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2 like Mac OS X) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0 MQQBrowser/8.8.2 Mobile/15B87 Safari/604.1 MttCustomUA/2 QBWebViewType/1 WKType/1',
            'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0 MQQBrowser/8.8.2 Mobile/14B72c Safari/602.1 MttCustomUA/2 QBWebViewType/1 WKType/1',
            'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15G77 wxwork/2.5.1 MicroMessenger/6.3.22 Language/zh',
            'Mozilla/5.0 (Linux; Android 5.1.1; OPPO R9 Plustm A Build/LMY47V; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.12 baiduboxapp/10.12.0.12 (Baidu; P1 5.1.1)',
            'Mozilla/5.0 (Linux; Android 8.1.0; PACM00 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.11 (Baidu; P1 8.1.0)',
            'Mozilla/5.0 (Linux; Android 8.1.0; vivo Y71A Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.11 (Baidu; P1 8.1.0)',
            'Mozilla/5.0 (Linux; U; Android 7.0; zh-cn; MI 5s Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.2.2',
            'Mozilla/5.0 (Linux; U; Android 8.0.0; zh-CN; MI 5 Build/OPR1.170623.032) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/11.8.9.969 Mobile Safari/537.36',
            'Mozilla/5.0 (Linux; Android 8.0.0; MI 6 Build/OPR1.170623.027) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36 Maxthon/3235',
            'Mozilla/5.0 (Linux; Android 8.0.0; SM-G9650 Build/R16NW; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.11 (Baidu; P1 8.0.0)',
            'Mozilla/5.0 (Linux; Android 8.0.0; SM-N9500 Build/R16NW; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.11 (Baidu; P1 8.0.0)',
            'Mozilla/5.0 (Linux; U; Android 8.0.0; zh-CN; BAC-AL00 Build/HUAWEIBAC-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/11.9.4.974 UWS/2.13.1.48 Mobile Safari/537.36 AliApp(DingTalk/4.5.11) com.alibaba.android.rimet/10487439 Channel/227200 language/zh-CN',
            'Mozilla/5.0 (Linux; Android 6.0.1; OPPO A57 Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/10.13 baiduboxapp/10.13.0.10 (Baidu; P1 6.0.1)',
        ]
        var = random.randint(0, 18)
        Ualist = list[var]
        return Ualist


if __name__=='__main__':
    start = Start()
    start.initialize()