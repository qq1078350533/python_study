# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/18
"""
# 9618 出现

#  url = "https://www.airasia.cn/select/zh/cn/CAN/PNH/2020-09-12/N/1/0/0/O/N/CNY/ST?key=62a7fae6-b158-11ea-adb1-9f8d686a7fab1592480375.86"
import requests

def cny_price():
    ""
    url = "https://k.airasia.com/shopprice-pwa/0/1/CAN/KUL/2020-09-04/2020-09-25/1/0/0"
    headers = {
        "X-Custom-Flag": "1",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiI3Z096TzNYbFEwZXBQaXdWbXhiNWhsUmVRUjU3Z1VjTCIsImlhdCI6IjE1OTI0ODA0MTUuMjIiLCJhdWQiOiJsZmMtcHdhIiwiZXhwIjoxNTkyNDgxMzE1LCJzdWIiOiJmM2RjY2M0MS0wNTYzLTQzNTMtOGVmMC00MmU4YzI2NWM5NGYifQ.i_uRkeyHXbvsmk85I3N1MLEZIrGl-3xOm8SBtLtgMY0",
        "channel_hash": "98ba1fad5baab2959fd06259acc292c6ebf46e210735882afc32a084",
        "Accept": "application/json, text/plain, */*",
        "origin": "https://www.airasia.cn",
        "User-Agent": "Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1",
        "Referer": "https://www.airasia.cn/select/zh/cn/CAN/KUL/2020-09-04/2020-09-25/1/0/0/R/N/CNY/ST?key=35c35e02-b109-11ea-95bb-cf44867d8ede1592446370.3"
    }
    response = requests.get(url=url, headers=headers).json()
    return response


def information_fetching(json):
    set_price = json['GetAvailability'][0]["FaresInfo"][0]['BrandedFares']['LowFare']['TotalPrice']
    return_price = json['GetAvailability'][1]["FaresInfo"][0]['BrandedFares']['LowFare']['TotalPrice']
    set_flight_information = json['GetAvailability'][0]["FaresInfo"][0]['BrandedFares']['JourneySellKey']
    return_flight_information = json['GetAvailability'][1]["FaresInfo"][0]['BrandedFares']['JourneySellKey']
    print('出发机票的价格为：' , set_price)
    print("出发航班信息为 ", set_flight_information)
    print('返程的机票价格为', return_price)
    print("返程航班信息为",return_flight_information)


if __name__ == '__main__':
    json_date = cny_price()
    print(json_date)
