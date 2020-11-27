import requests
import jsonpath
import pandas as pd

class Main(object):
    def start_url(self):
        """
        网页版正在维修，采用app端抓包方式，格式为json格式
        :return: 响应
        """
        url = "https://data.weibo.com/index/ajax/newindex/getchartdata"
        headers = {
            "accept-language": "zh-CN,zh;q=0.9",
            "accept-encoding": "gzip, deflate, br",
            "content-type": "application/x-www-form-urlencoded",
            "origin": "https://data.weibo.com",
            "referer": "https://data.weibo.com/index/newindex?visit_type=trend&wid=1091324264913",
            "user-agent": "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Mobile Safari/537.36"
        }
        data = {
            "wid": "1091324264913",
            "dateGroup": "3month"
        }
        response = requests.post(url=url,headers=headers,data=data).json()
        return response


    def parse_json(self,response):
        """
        解析json，获取关键字，日期，指数值
        :param response:
        :return:['病毒', '12月30日', 77223]等等92个数据组成的列表
        """
        title = jsonpath.jsonpath(response,"$..name")[0]
        dates = response["data"][0]["trend"]["x"]
        index_values = response["data"][0]["trend"]["s"]
        information = []
        for date,index_value in zip(dates,index_values):
            lists = [title, date, index_value]
            information.append(lists)
        return information


    def save_data(self,information):
        """
        采用pandas库来写入csv
        :param information:
        :return:
        """
        name = ['关键词', "日期", "指数值"]
        # 接着就是使用pandas里面的函数，将已经定义好的列表以及定义好的每一列的名字，整合起来。
        test = pd.DataFrame(columns=name, data=information)
        test.to_csv("./test1.csv")

if __name__ == '__main__':
    spider = Main()
    response = spider.start_url()
    information = spider.parse_json(response)
    spider.save_data(information)
