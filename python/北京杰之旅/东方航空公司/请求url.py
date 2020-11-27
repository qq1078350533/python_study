# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/17
"""
import requests

data = {
    "_": "56814f20b06211ea97783d5b9e018912",
    'searchCond': '{"adtCount":1,"chdCount":0,"infCount":0,"currency":"CNY","tripType":"OW","recommend":false,"reselect":"","page":"0","sortType":"a","sortExec":"a","seriesid":"56814f20b06211ea97783d5b9e018912","segmentList":[{"deptCd":"SEL","arrCd":"SHA","deptDt":"2020-10-31","deptAirport":"ICN","arrAirport":"","deptCdTxt":"首尔","arrCdTxt":"上海","deptCityCode":"SEL","arrCityCode":"SHA"}],"version":"A.1.0"}'
}
url = "http://www.ceair.com/otabooking/flight-search!doFlightSearch.shtml"
headers = {
    "Accept": "application/json, text/javascript, */*; q=0.01",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36",
    "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    "Host": "www.ceair.com",
    "Referer": "http://www.ceair.com/booking/aicn-sha-201031_CNY.html?seriesid=56814f20b06211ea97783d5b9e018912"
}
response = requests.post(url=url, data=data, headers=headers)
print(response.json())
print(response.cookies)
