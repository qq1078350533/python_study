import requests
import json


def get_api(song_id):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36'
    }
    api_url = "http://musicapi.taihe.com/v1/restserver/ting?method=baidu.ting.song.playAAC&format=jsonp&callback=jQuery17202142295334785118_1582457188755&songid={}&from=web&_=1582457191746".format(song_id)
    response = requests.get(url=api_url,headers=headers)
    # print(api_url)
    text = json.loads(response.text[41:-2])
    url = text["bitrate"]["file_link"]
    name = text["songinfo"]["title"]
    print(url,name)


get_api(15925736)
