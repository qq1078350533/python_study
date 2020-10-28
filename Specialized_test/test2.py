<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d0f0af6... 同步更新20201028
sum = 0
for i in range(1,10):
    sum += i

<<<<<<< HEAD
print(sum)
=======
print(sum)
=======
# 极速版
import requests,time
import google.protobuf

url = 'https://aweme.snssdk.com/aweme/v2/feed/?type=0&max_cursor=0&min_cursor=-1&count=6&volume=0.6666666666666666&pull_type=2&need_relieve_aweme=0&filter_warn=0&req_from&is_cold_start=0&longitude=0&latitude=0&address_book_access=1&gps_access=1&cached_item_num=3&last_ad_show_interval=-1&mac_address=f8%3Acf%3Ac5%3A88%3A7e%3A68&action_mask=-1&ad_extra=%7B%22topview_type%22%3A0%7D&pass_through&red_packet_guide=false&filter_live_cell=false&need_personal_recommend=1&is_first_feed=false&os_api=22&device_type=Nexus%206&ssmix=a&manifest_version_code=110700&dpi=560&uuid=359320051140506&app_name=douyin_lite&version_name=11.7.0&ts=1601097052&app_type=normal&ac=wifi&update_version_code=11709900&channel=tengxun&_rticket=1601097053242&device_platform=android&iid=3078249752832190&version_code=110700&mac_address=f8%3Acf%3Ac5%3A88%3A7e%3A68&cdid=c855715e-2555-4b5a-8374-8f1b107de99b&openudid=80c0065ee0be4cb&device_id=1952348995336375&resolution=1440*2392&os_version=5.1&language=zh&device_brand=google&aid=2329'
headers = {
"Host": "aweme.snssdk.com",
"Connection": "keep-alive",
"Cookie": "odin_tt=abec3391d899f6fa365ab16db6d911c82ceade841a657eecdafd5897228a7d9d403aeecdf81baa38f7af3b6a072009da8cacfe670abb0faa213a8ab3ec3fbd25; install_id=3078249752832190; ttreq=1$2ccfaf286fa2f0cbc4fd5321f369b49752a73576",
"X-SS-REQ-TICKET": "1601097053239",
"sdk-version": "1",
"x-tt-trace-id": "00-c8d235b70d6efa6ac5838b729fe60919-c8d235b70d6efa6a-01",
"User-Agent": "com.ss.android.ugc.aweme.lite/110700 (Linux; U; Android 5.1; zh_CN; Nexus 6; Build/LMY47I; Cronet/TTNetVersion:4df3ca9d 2019-11-25)",
"Accept-Encoding": "gzip, deflate",
"X-Gorgon": "0408907f0015f8187e9b8314e1a88185d11aa5eee3cfe7da4cc4",
"X-Khronos": "1601097053",
   }
response = requests.get(url, headers=headers, verify=False)
# response.encoding = 'utf-8'
print(response.text)
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
