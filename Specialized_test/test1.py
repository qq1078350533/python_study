import requests

def test_01():
    url = "https://api3-normal-c-lq.amemv.com/aweme/v1/user/following/list/?"
    url_parm = "user_id=558160297067571&max_time=1604647100&count=20&vcd_count=0"
    url_v2 = 'os_api=25&device_platform=android&device_type=Mi-4c&version_code=110300&app_name=aweme&device_id=123456&os_version=7.1.2&channel=tengxun_new'
    headers = {
        'X-Tt-Token': '009b795a5b4844b65993ddadfeb3c11849c6ed546351ea4c066ca1048d5a15466ab187e06aca4a50dceedcb9d28fe9870962',
        'User-Agent': 'com.ss.android.ugc.aweme/110301 (Linux; U; Android 7.1.2; zh_CN; Mi-4c; Build/NJH47F; Cronet/TTNetVersion:b4d74d15 2020-04-23 QuicVersion:0144d358 2020-03-24)',
        'x-common-params-v2': url_v2,
    }
    response = requests.post(url+url_parm, headers=headers).json()
    print(response)

if __name__ == '__main__':
    test_01()