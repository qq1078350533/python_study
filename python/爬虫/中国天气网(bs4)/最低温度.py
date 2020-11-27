import requests
from bs4 import BeautifulSoup
from pyecharts.charts import Bar

ALL_DATA = []

def parse_page(url):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
    }
    reponse = requests.get(url,headers=headers)
    text = reponse.content.decode('utf-8')
    soup = BeautifulSoup(text,"html5lib")
    coMidtab = soup.find("div",class_='conMidtab')
    tables = coMidtab.find_all('table')
    for table in tables:
        trs = table.find_all("tr")[2:]
        for index,tr in enumerate(trs) :
            tds = tr.find_all("td")
            city_td = tds[0]
            if index == 0:
                city_td = tds[1]
            city = list(city_td.stripped_strings)[0]
            temp_td = tds[-2]
            min_temp = list(temp_td.stripped_strings)[0]
            ALL_DATA.append({"city":city,"min_temp":int(min_temp)})
            # print({"city":city,"min_temp":int(min_temp)})


def main():
    urls = [
        "http://www.weather.com.cn/textFC/hb.shtml",
        "http://www.weather.com.cn/textFC/db.shtml",
        "http://www.weather.com.cn/textFC/hd.shtml",
        "http://www.weather.com.cn/textFC/hz.shtml",
        "http://www.weather.com.cn/textFC/hn.shtml",
        "http://www.weather.com.cn/textFC/xb.shtml",
        "http://www.weather.com.cn/textFC/xn.shtml",
        "http://www.weather.com.cn/textFC/gat.shtml"
        ]
    for url in urls:
        parse_page(url)

    # 数据分析
    # 根据最低气温进行排序
    # def sorr_key(data):
    #     min_temp = data["min_temp"]
    #     return min_temp
    ALL_DATA.sort(key=lambda data:data["min_temp"])
    data = ALL_DATA[0:10]
    cities = list(map(lambda x:x['city'],data))
    temps = list(map(lambda x:x['min_temp'],data))
    chart = Bar("中国天气最低温度排行榜")
    chart.add('',cities,temps)
    chart.render('temperature.html')


if __name__ == '__main__':
    main()