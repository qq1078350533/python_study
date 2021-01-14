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


@app.route('/dy/x_g', methods=['POST'])
def x_g():
    url = request.form.get('url')  # 获取 JOSN 数据
    # url = data.get('url')
    ts = str(int(time.time()))
    rict = str(int(time.time() * 1000))
    #浏览器访问不建议用get，会进行urlencode
    # url = f"https://aweme.snssdk.com/aweme/v2/feed/?type=0&max_cursor=0&min_cursor=0&count=6&volume=0.73&pull_type=4&" \
    #       f"need_relieve_aweme=0&filter_warn=0&req_from=enter_auto&is_cold_start=1&longitude=0&latitude=0&address_book_access=2&" \
    #       f"gps_access=1&cached_item_num=0&last_ad_show_interval=-1&preload_aweme_ids&" \
    #       f"download_sdk_info=%7B%22space_unoccupied%22%3A15401468%7D&action_mask=-1&os_api=22&device_type=PCT-AL10&" \
    #       f"device_platform=android&ssmix=a&manifest_version_code=110101&dpi=480&version_code=110100&app_name=aweme&" \
    #       f"cdid=8cbdc9ae-4fdf-400f-952a-a157826fefba&version_name=11.1.0&ts={ts}&cpu_support64=false&resolution=1080*1920&" \
    #       f"os_version=5.1.1&language=zh&device_brand=HUAWEI&app_type=normal&ac=wifi&host_abi=armeabi-v7a&" \
    #       f"update_version_code=11109900&aid=1128&channel=tengxun_new&_rticket={rict}&mcc_mnc=46000"
    # url = request.args['url'] #
    res = script.exports.callsecretfunctionedy(url)
    print(res, url)
    return res


if __name__ == '__main__':
    app.run(port=5200)