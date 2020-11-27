import requests
import pymysql
from urllib.parse import urlencode
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


class Taobao:
    def __init__(self):
        # self.conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='root1234', db='stock',
        #                             charset="utf8")
        # self.cursor = self.conn.cursor()
        pass

    def start_request(self):
        data_value = 0
        while True:
            baseUrl = 'https://kxuan.taobao.com/searchSp.htm?'
            params = {
                "1": "1",
                "data-key": "s",
                "data-value": data_value,
                "ajax": "true",
                "_ksTS": "1581911664213_421",
                "callback": "jsonp422",
                "ruletype": "2",
                "bcoffset": "2",
                "navigator": "all",
                "nested": "we",
                "is_spu": "0",
                "ntoffset": "0",
                "kxuan_swyt_item": "37316",
                "searchtype": "item",
                "uniq": "pid",
                "id": "4525",
                "enginetype": "0"
            }
            data_value += 25
            if data_value == 2525: break

            url = baseUrl + urlencode(params)
            r = self.get_html_text(url)
            res = json.loads(r[9:-1])
            auctions = res.get("mods").get("itemlist").get("data").get("auctions")
            dataList = []
            for auction in auctions:
                nid = auction.get("nid")
                favcount, commentCount = self.get_fav(nid)
                title = auction.get("raw_title")
                detail_url = "https:" + auction.get("detail_url")
                nick = auction.get("nick")
                # price = auction.get("view_price")
                favcountNum = int(favcount)
                sales = self.get_sales(nid,detail_url)
                if favcountNum > 600 and not None:
                    print([nid, title, favcount,sales , nick, detail_url])
                    dataList.append([nid, title, favcount, sales, nick, detail_url])

            # self.save(dataList)

    def save(self, datas):
        sql = """insert into taobao VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
                             ON DUPLICATE KEY UPDATE nid=VALUES(nid)"""

        self.cursor.executemany(sql, datas)
        self.conn.commit()

    def get_html_text(self, url):
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
        try:
            cookieStr = 'miid=1277563255283569875; cna=rx8fFasEcgICAXWIHY4eofTh; hng=CN%7Czh-CN%7CCNY%7C156; thw=cn; tracknick=%5Cu7765%5Cu7768%5Cu5929%5Cu4E0B%5Cu65E0%5Cu4EBA%5Cu80FD%5Cu53CA; _cc_=VT5L2FSpdA%3D%3D; tg=0; enc=Iw0GcbRCAlrvg9bEQiwUp4mbgfSt6Wg8DWwznVwZZnhpdt8UT%2Bmrcwwh9jhnj6sCZKqP93H3n7gJKxHpUjPJqA%3D%3D; x=e%3D1%26p%3D*%26s%3D0%26c%3D0%26f%3D0%26g%3D0%26t%3D0%26__ll%3D-1%26_ato%3D0; t=0f91ed61b2641d1384fa4d8980054827; SESSION=1a6258fc-0bf9-4f39-8b55-29b8b6f63adc; cookie2=59cc2c40440e818cd9823fc1675c2c76; l=cB_TEszcvDFGNVxyBOfZlurza77tPIRb8sPzaNbMiICPOefp986GWZV1uqT9CnGVL6vpR3SGcBbWBYYKmyUIhIQ-ZECA9dqc.; isg=BCwseuCRXrZ5xUgSF7miJx6J_Qpe5dCPBINI8YZtkFffkc2brvVIH-djtVkpGQjn; _samesite_flag_=true; _tb_token_=f35fed77e1d80; v=0'
            cookies = {}
            for line in cookieStr.split(';'):
                name, value = line.strip().split('=', 1)
                cookies[name] = value
            r = requests.get(url, cookies=cookies, headers=headers, timeout=30)
            r.raise_for_status()
            r.encoding = r.apparent_encoding
            return r.text
        except:
            return ''

    def get_fav(self, nid):
        # 收藏人气

        headers = {
            'cookie': 'miid=1277563255283569875; cna=rx8fFasEcgICAXWIHY4eofTh; hng=CN%7Czh-CN%7CCNY%7C156; thw=cn; tracknick=%5Cu7765%5Cu7768%5Cu5929%5Cu4E0B%5Cu65E0%5Cu4EBA%5Cu80FD%5Cu53CA; _cc_=VT5L2FSpdA%3D%3D; tg=0; enc=Iw0GcbRCAlrvg9bEQiwUp4mbgfSt6Wg8DWwznVwZZnhpdt8UT%2Bmrcwwh9jhnj6sCZKqP93H3n7gJKxHpUjPJqA%3D%3D; x=e%3D1%26p%3D*%26s%3D0%26c%3D0%26f%3D0%26g%3D0%26t%3D0%26__ll%3D-1%26_ato%3D0; t=0f91ed61b2641d1384fa4d8980054827; cookie2=59cc2c40440e818cd9823fc1675c2c76; _samesite_flag_=true; _tb_token_=f35fed77e1d80; v=0; _m_h5_tk=91fdf43f6daafe81b9db6fd30328e7dc_1581916621061; _m_h5_tk_enc=19cc889a0785a17f3eb3105def860f76; l=cB_TEszcvDFGNeh_BOfNRurza77OBKOjCsPzaNbMiIB195CamdPJ_HwEe_9yL3QQE953cHtPjiOhPRn28zz38ARAybYAM6pgm; isg=BPb2HeBZtAuoBUJ0satYqZAbRyz4FzpRIjLz0GDf4ll0o5Y9yKeKYVxRv3nPEDJp',
            'referer': 'https://detail.m.tmall.com/item.htm?id=610872082401',
            'user-agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Mobile Safari/537.36'
        }
        baseUrl = 'https://h5api.m.taobao.com/h5/mtop.taobao.detail.getdetail/6.0/?'
        params = {
            "jsv": "2.4.8",
            "appKey": "12574478",
            "t": "1581913294248",
            "sign": "80b83e28e55f8a061fc4fe1799675e83",
            "api": "mtop.taobao.detail.getdetail",
            "v": "6.0",
            "dataType": "jsonp",
            "ttid": "2017%40taobao_h5_6.6.0",
            "AntiCreep": "true",
            "type": "jsonp",
            "callback": "mtopjsonp2",
            'data': '{"itemNumId":"%s"}' % nid

        }
        url = baseUrl + urlencode(params)
        res = requests.get(url, headers=headers)

        data = json.loads(res.text[11:-1]).get("data")
        item = data.get("item")
        commentCount = item.get("commentCount")
        favcount = item.get("favcount")
        return favcount, commentCount

    def get_sales(self, nid, urls):
        # 销量
        options = webdriver.ChromeOptions()
        # 添加参数headless 变成无界面模式
        options.add_argument("headless")
        driver = webdriver.Chrome(chrome_options=options)
        sales = 0

        # https: // h5.m.taobao.com / awp / core / detail.htm?id = 10047954526
        if "taobao" in urls:
            url = 'https://h5.m.taobao.com/awp/core/detail.htm?id=' + str(nid)
            driver.get(url)

            try:
                element = WebDriverWait(driver, 10).until(
                    EC.presence_of_element_located((By.XPATH, "//span[contains(text(),'月销')]"))
                )
                if element:
                    sales = driver.find_element_by_xpath("//span[contains(text(),'月销')]").text
            except Exception as e:
                print(e.args)

        # https: // detail.m.tmall.com / item.htm?id = 10047954526
        else:
            url = 'https://detail.m.tmall.com/item.htm?id=' + str(nid)
            driver.get(url)

            try:
                element = WebDriverWait(driver, 10).until(
                    EC.presence_of_element_located((By.XPATH, '//span[@class="sales"]'))
                )
                if element:
                    sales = driver.find_element_by_xpath('//span[@class="sales"]').text
            except Exception as e:
                print(e.args)

        valueStr = str(sales).replace("月销量", "").replace("月销", "").replace("件", "").strip()
        driver.quit()
        if "万" in valueStr:
            return valueStr
        value = int(valueStr[:3])
        if value > 100:
            return valueStr
        else:
            return None

if __name__ == '__main__':
    Taobao().start_request()
