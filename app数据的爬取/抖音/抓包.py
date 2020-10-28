import requests
headers = {
    "Accept-Encoding": "gzip",
    "X-SS-REQ-TICKET": "1585207506071",
    "Cookie": "install_id=109082053539; ttreq=1$5fff7bbb6b4ef721680ae38b39c0aeaf690b7f76; odin_tt=921082a691f4548309c3ebfca9682347017ce0dffe786dc7965ac26fb3b3319435403031f8f73a5340b2b6e730b667e39c6191ca50169ee38080fbe6df723809",
    "Connection": "Keep-Alive",
    "Host": "aweme-lq.snssdk.com",
    "sdk-version": "1",
    "X-Gorgon": "03006cc04001177d7e51cc24afb1c212c06a415902ccbefb99f9",
    "X-Khronos": "1585207506",
    "User-Agent": "okhttp/3.10.0.1"
}
url = 'https://aweme-lq.snssdk.com/aweme/v1/aweme/post/?max_cursor=0&sec_user_id=MS4wLjABAAAAGWFEyl_NuLBGlV43HPIjpq__gw2xt7FzeoxJk_P5kVc&count=20&retry_type=no_retry&iid=109082053539&device_id=60349120696&ac=wifi&channel=aweGW&aid=1128&app_name=aweme&version_code=840&version_name=8.4.0&device_platform=android&ssmix=a&device_type=PCLM10&device_brand=OPPO&language=zh&os_api=22&os_version=5.1.1&uuid=865166025729867&openudid=2224548991340892&manifest_version_code=840&resolution=1280*720&dpi=240&update_version_code=8402&_rticket=1585207506051&mcc_mnc=46000&ts=1585207505&app_type=normal'
response = requests.get(url=url,headers=headers).json()
print(response)