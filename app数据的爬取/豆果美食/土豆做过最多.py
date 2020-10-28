import json
from multiprocessing import Queue
import requests
from handel_mongo import mongo_info
from concurrent.futures import ThreadPoolExecutor
import time

# 创建队列
queue_list = Queue()

def handel_request(url,data):
    header = {
        'client':'4',
        'version':'6956.2',
        'device':'SM-G955N',
        'sdk':'22,5.1.1',
        'imei':'355757437963966',
        'channel':'baidu',
        # 'mac':'40:E2:30:63:96:1B',
        'resolution':'1280 * 720',
        'dpi':'1.5',
        # 'android - id':'40e23063961b4278',
        # 'pseudo - id':'063961b427840e23',
        'brand':'samsung',
        'scale':'1.5',
        'timezone':'28800',
        'language':'zh',
        'cns':'3',
        'carrier':'CHINA + MOBILE',
        # 'imsi':'460074278639627',
        'User - Agent':'Mozilla / 5.0(Linux; Android 5.1.1; SM - G955N Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0Chrome/74.0.3729.136 Mobile Safari/537.36',
        'act - code':'1581571864',
        'act - timestamp':'1581571861',
        'uuid':'8ad7729c - 45e3 - 40e4 - 9780 - fb8b5c32f2d6',
        'battery - level':'1.00',
        'battery - state':'3',
        'newbie':'1',
        'reach':'10000',
        'Content - Type':'application / x - www - form - urlencoded; charset = utf - 8',
        'Accept - Encoding':'gzip, deflate',
        'Connection':'Keep - Alive',
        # 'Cookie':'duid = 63017780',
        'Host':'api.douguo.net'
        # 'Content - Length':'132'
    }
    proxy = {'http':'http://HZ489W1A6ZSGG26D:9D04C04BC26026EF@http-dyn.abuyun.com:9030'}
    response = requests.post(url=url,headers=header,data=data,proxies=proxy)
    time.sleep(5)
    return response

def handle_index():
    url = 'http://api.douguo.net/recipe/flatcatalogs'
    # client=4&_session=1581573277966355757437963966&v=1581570210&_vs=2305&sign_ran=fd374b3c514f3c0ae2c7ff36ed4526d2&code=2454345748926873
    data = {
        "client" : "4",
        # "&_session" : "1581573277966355757437963966",
        # "v" : "1581570210",
        "_vs" : "2305",
        "sign_ran" : "1594a618c9433d5b1df7304fcce5a5be",
        "code" : "a6a5a103aa9c00ee"
    }
    response = handel_request(url=url,data=data)
    index_response_dict = json.loads(response.text)
    for index_item in index_response_dict['result']['cs']:
        for index_item_1 in index_item['cs']:
            for item in index_item_1['cs']:
                data_2 = {
                    'client' : '4',
                    # 'session' : '1581571875156355757437963966' ,
                    'keyword' : item['name'],
                    'order' : '0' ,
                    '_vs' : '11113',
                    'type' : '0',
                    'auto_play_mode' : '2',
                    'sign_ran' : '92743cbf59ab3fbed80545b8a2d68ed4',
                    'code' : '4e7d6ddc5acfc327'
                }
                queue_list.put(data_2)

def handle_caipu_list(data):
    print('当前处理的食材{}'.format(data['keyword']))
    caipu_list_url = "http://api.douguo.net/recipe/v2/search/0/20"
    caipu_list_response = handel_request(url=caipu_list_url,data=data)
    caipu_list_response_dict = json.loads(caipu_list_response.text)
    for item in caipu_list_response_dict["result"]['list']:
        caipu_info = {}
        caipu_info['shicai'] = data['keyword']
        if item['type'] == 13:
            caipu_info['uesr_name'] = item['r']['an']
            caipu_info['shicai_id'] = item['r']['id']
            caipu_info['describe'] = item['r']['cookstory'].replace('\n','').replace(' ','')
            caipu_info['caipu_name'] = item['r']['n']
            caipu_info['zuoliao_list'] = item['r']['major']
            detail_url = 'http://api.douguo.net/recipe/detail/{}'.format(str(caipu_info['shicai_id']))
            detail_data = {
                'client': '4',
                # '_session': '1581573277966355757437963966',
                'author_id': '0',
                'vs': '11101',
                'ext': '{"query":{"kw":caipu_info["shicai"],"src":"11101","idx":"1","type":"13","id":str(caipu_info["shicai_id"])}}',
                'is_new_user': '1',
                'sign_ran': 'ecb79d15b2b2a0a27aa3487c0a706c02',
                'code' : 'ed6cced41229c51b'
            }
            detail_response = handel_request(url=detail_url,data=detail_data)
            detail_response_dict = json.loads(detail_response.text)
            caipu_info["tips"] = detail_response_dict["result"]["recipe"]["tips"]
            caipu_info["cook_step"] = detail_response_dict["result"]["recipe"]["cookstep"]
            print('当前入库的菜谱是{}'.format(caipu_info['caipu_name']))
            mongo_info.insert_item(caipu_info)
        else:
            continue


handle_index()
pool = ThreadPoolExecutor(max_workers=2)
while queue_list.qsize() > 0:
    pool.submit(handle_caipu_list,queue_list.get())

# print(queue_list.qsize())