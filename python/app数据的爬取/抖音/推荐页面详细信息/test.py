#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: test.py
@time: 2020/9/26 12:20
@desc: 
"""
# -*- coding:utf-8 -*-
import hashlib
import json
import frida,time
from flask import Flask, jsonify, request


def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)


js = open('frida_rpc.js', 'r', encoding='utf8').read()
# session = frida.get_usb_device().attach('me.ele')
session = frida.get_usb_device().attach('com.ss.android.ugc.aweme')  #app进程
script = session.create_script(js)
script.on('message', on_message)
script.load()

app = Flask(__name__)

def USE_MD5(test):
    if not isinstance(test, bytes):
        test = bytes(test, 'utf-8')
    m = hashlib.md5()
    m.update(test)
    return m.hexdigest()

@app.route('/dy/stub', methods=["POST"])
def stub():
    body = request.form.get('body')
    stub = USE_MD5(body)
    return json.dumps({"stub": stub})


@app.route('/dy')
def x_g():
    # url = request.form.get('url')  # 获取 JOSN 数据
    # url = data.get('url')
    ts = str(int(time.time()))
    rict = str(int(time.time() * 1000))
    #浏览器访问不建议用get，会进行urlencode
    url = "https://api3-core-c-hl.amemv.com/aweme/v2/feed/?type=0&max_cursor=0&min_cursor=0&count=6&volume=0.0&pull_type=1&" \
          "need_relieve_aweme=0&filter_warn=0&is_cold_start=0&longitude=0&latitude=0&address_book_access=2&gps_access=2&" \
          "cached_item_num=0&last_ad_show_interval=-1&mac_address=F8%3ACF%3AC5%3A88%3A7E%3A68&download_sdk_info=%7B%22space_unoccupied%22%3A14411708%7D&" \
          f"action_mask=-1&_rticket={rict}&ts={ts}&os_api=29&device_platform=android&device_type=Nexus%206&iid=4081042835637495&" \
          f"version_code=100400&app_name=aweme&openudid=34eb43c4566a9259&device_id=404271713747624&os_version=10&aid=1128&" \
          f"channel=tengxun_new&ssmix=a&manifest_version_code=100401&dpi=560&cdid=100e3f47-b4ba-47b7-b1dd-7427a9766c93&" \
          f"version_name=10.4.0&resolution=1440*2392&language=zh&device_brand=google&app_type=normal&ac=wifi&update_version_code=10409900"
    # url = request.args['url'] #
    res = script.exports.callsecretfunctionedy(url)
    print(res, url)
    return res


if __name__ == '__main__':
    app.run(port=5200)