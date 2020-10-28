import requests
url = "http://music.migu.cn/v3/api/music/audioPlayer/getPlayInfo?dataType=2&data=U2FsdGVkX1%2FEP7SIrEX%2FAVoM95I8wqdw2jRXpM0mUKXjVpE%2Bc0QiK5sj2tFyb0mO2%2BqhHOULojdfsWTJ1QTMNA%3D%3D&secKey=fEbzzAY88GJbmIrNjsq0lXTyzu3erdjH5pmvgMgHbvjbiAjcIRo11Ow6vsss78aLGM%2FaGJ5OauwV96%2BwLxSTorUEpEUKtrzEFyLZ9eAUIsXNMbUKUHLDocCRLN%2BbXgt1ThCn4TCLdXGB6WEAvysnZSupHuk7x2CgTZKC1VMNoQs%3D"
headers = {
    "Referer": "http://music.migu.cn/v3/music/player/audio",
    "Host": "music.migu.cn",
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36"
}

response = requests.get(url=url,headers=headers).json()
print(response)