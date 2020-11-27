import requests
#
# url = 'https://www.lagou.com/jobs/positionAjax.json?px=default&city=%E6%B7%B1%E5%9C%B3&needAddtionalResult=false'
# headers = {
#     'Referer': 'https://www.lagou.com/jobs/list_python/p-city_215?px=default',
#     'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36',
#     'Accept': 'application/json, text/javascript, */*; q=0.01',
#     'Cookie': 'user_trace_token=20191225112238-f6611285-5737-452e-a515-2be2d1cd6d70; _ga=GA1.2.2019975496.1577244162; LGUID=20191225112242-cfab18e2-26c5-11ea-b005-525400f775ce; gate_login_token=26ecfc523a24f6f0057bac5d472f72bbf1c49dec2668c1a8802cfa83f1cd68ec; LG_HAS_LOGIN=1; _putrc=61AF8075BBC2FD6C123F89F2B170EADC; JSESSIONID=ABAAABAAAGFABEF51944BBC21BB96657C6059E86ACE85E0; login=true; hasDeliver=0; privacyPolicyPopup=false; _gid=GA1.2.1655126318.1577244227; WEBTJ-ID=20191225112658-16f3b17e3a2243-0ff4e3018891df-6701b35-1049088-16f3b17e3a360; sajssdk_2015_cross_new_user=1; sensorsdata2015jssdkcross=%7B%22distinct_id%22%3A%2216f3b17e589c-098f7ae17bd0d8-6701b35-1049088-16f3b17e58a28a%22%2C%22%24device_id%22%3A%2216f3b17e589c-098f7ae17bd0d8-6701b35-1049088-16f3b17e58a28a%22%7D; index_location_city=%E5%85%A8%E5%9B%BD; _gat=1; Hm_lvt_4233e74dff0ae5bd0a3d81c6ccf756e6=1577244163,1577248087; LGSID=20191225122806-f2c504c4-26ce-11ea-b008-525400f775ce; PRE_UTM=m_cf_cpt_baidu_pcbt; PRE_HOST=sp0.baidu.com; PRE_SITE=https%3A%2F%2Fsp0.baidu.com%2F9q9JcDHa2gU2pMbgoY3K%2Fadrc.php%3Ft%3D06KL00c00fZNKw_0kuNh0FNkUsKi4fFX000005ryg7C00000r9fwBg.THL0oUhY1x60UWdBmy-bIfK15y7-njP9uHRvnj0snju9mvf0IHYYfWDLwWwDnjf3fbf4f1FKfbu7PjDYwRDYnYR3f1mvP6K95gTqFhdWpyfqn1nzrHm1PWbdriusThqbpyfqnHm0uHdCIZwsT1CEQLILIz4_myIEIi4WUvYEUA78uA-8uzdsmyI-QLKWQLP-mgFWpa4CIAd_5LNYUNq1ULNzmvRqUNqWu-qWTZwxmh7GuZNxTAPBI0KWThnqnHbkn6%26tpl%3Dtpl_11534_21264_17382%26l%3D1516017395%26attach%3Dlocation%253D%2526linkName%253D%2525E6%2525A0%252587%2525E5%252587%252586%2525E5%2525A4%2525B4%2525E9%252583%2525A8-%2525E6%2525A0%252587%2525E9%2525A2%252598-%2525E4%2525B8%2525BB%2525E6%2525A0%252587%2525E9%2525A2%252598%2526linkText%253D%2525E3%252580%252590%2525E6%25258B%252589%2525E5%25258B%2525BE%2525E7%2525BD%252591%2525E3%252580%252591-%252520%2525E4%2525BA%252592%2525E8%252581%252594%2525E7%2525BD%252591%2525E9%2525AB%252598%2525E8%252596%2525AA%2525E5%2525A5%2525BD%2525E5%2525B7%2525A5%2525E4%2525BD%25259C%2525EF%2525BC%25258C%2525E5%2525AE%25259E%2525E6%252597%2525B6%2525E6%25259B%2525B4%2525E6%252596%2525B0%21%2526xp%253Did%28%252522m3329636959_canvas%252522%29%25252FDIV%25255B1%25255D%25252FDIV%25255B1%25255D%25252FDIV%25255B1%25255D%25252FDIV%25255B1%25255D%25252FDIV%25255B1%25255D%25252FH2%25255B1%25255D%25252FA%25255B1%25255D%2526linkType%253D%2526checksum%253D70%26ie%3DUTF-8%26f%3D8%26tn%3Dbaidu%26wd%3D%25E6%258B%2589%25E5%258B%25BE%25E7%25BD%2591%26oq%3D%25E6%258B%2589%25E5%258B%25BE%25E7%25BD%2591%26rqlang%3Dcn; PRE_LAND=https%3A%2F%2Fwww.lagou.com%2Flanding-page%2Fpc%2Fsearch.html%3Futm_source%3Dm_cf_cpt_baidu_pcbt; unick=%E7%94%A8%E6%88%B73892; showExpriedIndex=1; showExpriedCompanyHome=1; showExpriedMyPublish=1; TG-TRACK-CODE=index_search; X_HTTP_TOKEN=9856072d63cc609d8518427751f19efb50d74409e7; Hm_lpvt_4233e74dff0ae5bd0a3d81c6ccf756e6=1577248159; LGRID=20191225122918-1d9fc6b9-26cf-11ea-a707-5254005c3644; SEARCH_ID=cc8fe7c7bc8a483788e4fe4d41be7421'
# }
# #post发送的数据
# data = {
#         'first': 'true',
#         'pn': '1',
#         'kd': 'python'
# }

# 使用代理
# proxy = {
#     'https':'61.145.49.65:9999'
# }

# 如何获得cookie
response = requests.get('https://www.lagou.com/jobs/list_python/p-city_215?px=default#filterBox')
print(requests.utils.dict_from_cookiejar(response.cookies))

# res = requests.post(url=url,headers=headers,data=data,proxies=proxy)
#
# #接收返回数据
# print(res.json())