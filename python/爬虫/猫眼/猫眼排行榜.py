import requests
import re
import json
import time
from requests.exceptions import RequestException

def get_one_page(url):
    try:
        headers = {
            'Referer': 'https://maoyan.com/board/7',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36'
        }
        response = requests.get(url,headers=headers)
        if response.status_code == 200:
            return response.text
        return None
    except RequestException:
        return None

def parse_one_page(html):
    indexs = re.findall('<i class="board-index board-index-.*?">(.*?)</i>',html)
    images = re.findall('<img data-src="(.*?)"',html)
    names = re.findall('alt="(.*?)" class="board-img"',html)
    authors = re.findall('<p class="star">(.*?)</p>',html,re.S)
    times = re.findall('class="releasetime">(.*?)</p>',html)
    item = {}
    for i in range(10):
        index = indexs[i]
        name = names[i]
        image = images[i]
        author = authors[i].strip()
        time = times[i]
        item = {
            "排名":index,
            "电影名":name,
            "图片":image,
            "演员":author,
            "上映时间":time
        }
        yield item


def write_to_file(content):
    with open('result.text','a',encoding='utf-8') as f:
        f.write(json.dumps(content,ensure_ascii=False)+'\n')

def main(offset):
    url = 'https://maoyan.com/board/4?offset=' + str(offset)
    print(url)
    html = get_one_page(url)
    # jiegou = parse_one_page(html)
    for item in parse_one_page(html):
        time.sleep(1)
        write_to_file(item)



if __name__ == '__main__':
    for i in range(10):
        main(offset=i*10)