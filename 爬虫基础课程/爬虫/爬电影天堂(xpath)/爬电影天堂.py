from lxml import etree
import requests


BASE_DOMAIN = "https://www.dytt8.net/"

HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
}

def get_detail_urls(url):
    # url = "https://www.dytt8.net/html/gndy/dyzz/list_23_1.html"

    response = requests.get(url, headers=HEADERS)

    # requests库，默认会使用自己猜测的编码方式将抓取下来的网页进行解码，然后储存到text属性上去   乱码即要换一种解码方式
    text = response.text
    html = etree.HTML(text)
    detail_urls = html.xpath("//table[@class='tbspan']//a/@href")
    detail_urls = map(lambda url:BASE_DOMAIN+url,detail_urls)
    return detail_urls

def parse_detail_page(url):
    movie = {}
    response = requests.get(url,headers= HEADERS)
    text = response.content.decode("gbk")
    html= etree.HTML(text)
    title = html.xpath("//div[@class='title_all']//font[@color='#07519a']/text()")[0]
    movie['title'] = title
    zoomE = html.xpath("//div[@id='Zoom']")[0]
    cover = zoomE.xpath(".//img/@src")[0]
    movie['cover'] = cover
    infos = zoomE.xpath(".//text()")[0]
    download_url = html.xpath("//td[@bgcolor='#fdfddf']/a/@href")[0]
    movie["download_url"] = download_url

    def parse_info(info,rule):
        return info.replace(rule,"").strip()
    for info in infos:
        if info.startswith("◎年　　代　2019"):
            info = parse_info(info,"◎年　　代")
            movie["year"] = info
        elif info.startswith("◎产　　地"):
            info = parse_info(info,"◎产　　地")
            movie["country"] = info
        elif info.startswith("◎类　　别"):
            info = parse_info(info,"◎类　　别")
            movie['category'] = info
        elif info.startswith("◎上映日期"):
            info = parse_info(info,"◎上映日期")
            movie["time"] = info
    return movie


def main():
    base_url = "https://www.dytt8.net/html/gndy/dyzz/list_23_{}.html"
    movies = []

    # 是来控制页数
    for x in range(1,5):
        url = base_url.format(x)
        detail_urls = get_detail_urls(url)

        # 是来遍历一页中所有的电影的详情url
        for detail_url in detail_urls:
            movie = parse_detail_page(detail_url)
            movies.append(movie)
            print(movie)


if __name__ == '__main__':
    main()