import requests
import re

def parse_page(url):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36',
    }
    response = requests.get(url,headers=headers)
    text = response.text
    titles = re.findall(r'<div\sclass="cont">.*?<b>(.*?)</b>',text,re.DOTALL)
    dynasties = re.findall(r'<p class="source">.*?<a.*?>(.*?)</a>',text)
    authors = re.findall(r'<p class="source">.*?<a.*?>.*?<a.*?>(.*?)</a>',text)
    contents_tags = re.findall(r'<div class="contson" .*?>(.*?)</div>',text,re.DOTALL)
    contents = []
    for content in contents_tags:
        x = re.sub(r'<.*?>',"",content)
        contents.append(x.strip())

    poems = []
    for value in zip(titles,dynasties,authors,contents):
        titles,dynasties,authors,content = value
        poem = {
            "title":titles,
            "dynasties":dynasties,
            "authors":authors,
            "contents":content
        }
        poems.append(poem)

    for poem in poems:
        print(poem)
        print("=="*100)


def main():
    url_1 = "https://www.gushiwen.org/default_{}.aspx"
    for x in range(1,10):
        url = url_1.format(x)
        parse_page(url)

if __name__ == '__main__':
    main()