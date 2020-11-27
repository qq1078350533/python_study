import time

from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/jrtt')
def dy_test():
    # ts = str(int(time.time()))
    # rict = str(int(time.time() * 1000))
    #浏览器访问不建议用get，会进行urlencode
    url = f"https://aweme-eagle.snssdk.com/aweme/v1/feed/?type=0&max_cursor=0&min_cursor=-1&count=6&volume=0.6666666666666666&pull_type=2&need_relieve_aweme=0&filter_warn=0&req_from&is_cold_start=0&longitude=113.347588&latitude=22.991708&address_book_access=1&gps_access=1&os_api=22&device_type=Nexus%206&device_platform=android&ssmix=a&iid=3394909373733624&manifest_version_code=670&dpi=560&js_sdk_version=1.16.0.0&uuid=359320051140506&version_code=670&app_name=aweme&version_name=6.7.0&ts={ts}&openudid=80c0065ee0be4cb&device_id=1952348995336375&resolution=1440*2392&os_version=5.1&language=zh&device_brand=google&app_type=normal&ac=wifi&update_version_code=6702&aid=1128&channel=tengxun_new&_rticket={rict}"
    # url = request.args['url'] #
    ruslt = {
        "url":url
    }
    return ruslt


if __name__ == '__main__':
    app.run()