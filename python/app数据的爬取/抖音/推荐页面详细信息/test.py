#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: test.py
@time: 2020/9/26 12:20
@desc: 
"""
# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/07/14
"""
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


@app.route('/test')
def hello_world():
    args = request.args['url_path']
    res = script.exports.callsecretfunctioneleme(args)
    return jsonify(res)


@app.route('/dy')
def dy_test():
    ts = str(int(time.time()))
    rict = str(int(time.time() * 1000))
    #浏览器访问不建议用get，会进行urlencode
    url = f"https://aweme-eagle.snssdk.com/aweme/v1/feed/?type=0&max_cursor=0&min_cursor=-1&count=6&volume=0.6666666666666666&pull_type=2&need_relieve_aweme=0&filter_warn=0&req_from&is_cold_start=0&longitude=113.347588&latitude=22.991708&address_book_access=1&gps_access=1&os_api=22&device_type=Nexus%206&device_platform=android&ssmix=a&iid=3394909373733624&manifest_version_code=670&dpi=560&js_sdk_version=1.16.0.0&uuid=359320051140506&version_code=670&app_name=aweme&version_name=6.7.0&ts={ts}&openudid=80c0065ee0be4cb&device_id=1952348995336375&resolution=1440*2392&os_version=5.1&language=zh&device_brand=google&app_type=normal&ac=wifi&update_version_code=6702&aid=1128&channel=tengxun_new&_rticket={rict}"
    # url = request.args['url'] #
    res = script.exports.callsecretfunctionedy(url)
    ruslt = {
        "res":res,
        "url":url
    }
    return ruslt


if __name__ == '__main__':
    app.run()