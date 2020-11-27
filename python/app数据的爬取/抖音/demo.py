import requests
from lxml import etree
from fontTools.ttLib import TTFont
import re

def handle_decode():
    # 下载过来的原文件
    font = TTFont("DY.woff")
    # 转化之后的新文件
    font.saveXML("font.xml")
    # 提取的文件内容
    best_map = font['cmap'].getBestCmap()
    # print(best_map)
    # 如果存在进制问题 就需要转化(这里是10进制转16进制)
    new_best_map = {}
    for key, value in best_map.items():
        new_best_map[hex(key)] = value

    new_map = {
        'x': '',
        'num_': '1',
        'num_1': '0',
        'num_2': '3',
        'num_3': '2',
        'num_4': '4',
        'num_5': '5',
        'num_6': '6',
        'num_7': '9',
        'num_8': '7',
        'num_9': '8'
    }

    new_date = {}
    for k, v in new_best_map.items():
        new_date[k] = new_map[v]

    rs = {}
    for k, v in new_date.items():
        rs['&#' + k[1:] + '; '] = v
    return rs

def handle_douyin_web_share():
    search_douyin_str = re.compile(r'抖音ID：')
    share_web_url = 'https://www.iesdouyin.com/share/user/104255897823'
    share_web_header = {
        'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36'
    }
    share_web_response = requests.get(url=share_web_url,headers=share_web_header).text
    for k, v in handle_decode().items():
        if k in share_web_response:
            response = share_web_response.replace(k, v)

    share_web_html = etree.HTML(response)
    user_info = {}
    user_info["nickname"] = share_web_html.xpath('//p[@class="nickname"]/text()')[0]
    douyin_id1 = share_web_html.xpath('//p[@class="shortid"]/text()')[0].replace(' ', '')
    douyin_id2 = share_web_html.xpath('//p[@class="shortid"]/i/text()')
    # 抖音id中有数字
    if douyin_id2:
        douyin_id = douyin_id1 + ''.join(douyin_id2)
        user_info['douyin_id'] = re.sub(search_douyin_str,'',douyin_id)
    # 抖音id中没有数字
    else:
        douyin_id = douyin_id1
        user_info['douyin_id'] = re.sub(search_douyin_str, '', douyin_id)
    print(user_info)
    # pattern = re.compile('[0-9]+')
    # match = pattern.findall(douyin_id)
    # if match:
    #     print('ID内包含数字，需要替换')
    #     douyin_id1 = share_web_html.xpath('//p[@class="shortid"]/i/text()')
    #     print(douyin_id1)
    # else:
    #     user_info['douyin_id'] = re.sub(search_douyin_str, '',douyin_id)
    #     print(user_info)
handle_douyin_web_share()