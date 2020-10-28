import requests
import json


class DoubanSpider:
    def __init__(self):
        self.url_temp = "https://m.douban.com/rexxar/api/v2/subject_collection/tv_american/items?start={}&count=18&loc_id=108288"
        self.headers = {
            "Referer": "https://m.douban.com/tv/american",
            "User-Agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Mobile Safari/537.36"}

    def parse_url(self, url):
        print(url)
        response = requests.get(url, headers=self.headers)
        return response.content.decode()

    def get_content_list(self, json_str):
        dict_ret = json.loads(json_str)
        print(dict_ret)
        content_list = dict_ret['subject_collection_items']
        total = dict_ret['total']
        return content_list, total

    def save_content_list(self, content_list):# 保存
        with open('豆瓣.txt', 'a', encoding='utf-8') as f:
            for content in content_list:
                f.write(json.dumps(content, ensure_ascii=False))
                f.write('\n')
        print('保存成功')

    def run(self):  # 实现主要逻辑
        num = 0
        total = 100
        while num <= total:
            # 1.start_url
            url = self.url_temp.format(num)
            # 2.发送请求获取响应
            json_str = self.parse_url(url)
            # 3.提取数据
            content_list, total = self.get_content_list(json_str)
            # 4.保存
            self.save_content_list(content_list)
            # 5.构造下一页的url地址，进入循环
            num += 18

if __name__ == '__main__':
    douban_spider = DoubanSpider()
    douban_spider.run()