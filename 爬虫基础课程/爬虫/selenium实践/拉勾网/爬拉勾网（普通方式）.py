import requests
from lxml import etree
import time
import re

headers = {
        'User-Agent': 'Mozilla/5.0(Windows NT 10.0;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/79.0.3945.88Safari/537.36',
        'Referer': 'https://www.lagou.com/jobs/list_python%E7%88%AC%E8%99%AB/p-city_0?&cl=false&fromSearch=true&labelWords=&suginput=',
        'Host':'www.lagou.com',
        'Origin': 'https://www.lagou.com'
    }

def request_list_page():
    url1 = 'https://www.lagou.com/jobs/list_python%E7%88%AC%E8%99%AB/p-city_0?&cl=false&fromSearch=true&labelWords=&suginput='
    url = "https://www.lagou.com/jobs/positionAjax.json?needAddtionalResult=false"
    headers = {
        'User-Agent': 'Mozilla/5.0(Windows NT 10.0;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/79.0.3945.88Safari/537.36',
        'Referer': 'https://www.lagou.com/jobs/list_python%E7%88%AC%E8%99%AB/p-city_0?&cl=false&fromSearch=true&labelWords=&suginput=',
        'Host':'www.lagou.com',
        'Origin': 'https://www.lagou.com'
    }
    for x in range(1,11):
        data = {
        'first':'false',
        'pn':x,
        'kd':'python爬虫'
        }
        # 获取cookie信息
        s = requests.Session()
        s.get(url1,headers=headers,timeout=3)
        cookie = s.cookies

        reponse = requests.post(url,headers=headers,data=data,cookies=cookie)
        # 如果返回来的数据是json数据，那么会自动的load成字典
        result = reponse.json()
        postions = result['content']['positionResult']['result']
        for postion in postions:
            postionID = postion['positionId']
            postion_url = 'https://www.lagou.com/jobs/{}.html'.format(postionID)
            parse_postion_detail(postion_url)
            break
        break

def parse_postion_detail(url):
    response = requests.get(url,headers = headers)
    text = response.text
    html = etree.HTML(text)
    position_name = html.xpath('//h1[@class="name"]/text()')[0]
    salary = html.xpath('//dd[@class="job_request"]//span/text()')[0].strip()
    city = html.xpath('//dd[@class="job_request"]//span/text()')[1]
    city = re.sub(r'[ /]','',city)
    work_years = html.xpath('//dd[@class="job_request"]//span/text()')[2]
    work_years = re.sub(r'[ /]', '',work_years)
    education = html.xpath('//dd[@class="job_request"]//span/text()')[3]
    education = re.sub(r'[ /]', '',education)
    desc= ''.join(html.xpath('//dd[@class="job_bt"]//text()')).strip()
    print(desc)

def main():
    request_list_page()


if __name__ == "__main__":
    main()