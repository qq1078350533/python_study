import requests
from pyquery import PyQuery as pq

url = "https://www.zhihu.com/explore"
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36"
}
html = requests.get(url=url, headers=headers)
print(html.status_code)
print(html.text)
doc = pq(html.text)
items = doc(".explore-tab .feed-item").items()
for item in items:
    print(item)
    question = item.find('h2').text()
    author = item.filter('.author-link-line').text()
    answer = pq(item.find('.content').html()).text()
    file = open('explore.txt', 'a', encoding='utf-8')
    file.write('\n'.join([question, author, answer]))
    file.write('\n' + '=' * 50 + '\n')
    file.close()