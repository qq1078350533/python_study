import requests
import os
from urllib.request import urlretrieve



def start_url(url):
    headers = {
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
    }
    response = requests.get(url,headers=headers).json()
    for i in range(0,148):
        print("正在爬取{}个英雄".format(i))
        new__data = response["hero"][i]["heroId"]
        new_url = "https://game.gtimg.cn/images/lol/act/img/js/hero/{}.js".format(new__data)
        re = requests.get(new_url,headers=headers).json()
        num = re["skins"]
        name = re["hero"]["title"]
        print(len(num))
        os.mkdir(r'D:\Users\snackdeng\Desktop\英雄联盟皮肤壁纸\{}'.format(name))
        for i in range(len(num)):
            if num[i]["mainImg"]:
                png_url = num[i]["mainImg"]
                png_name = num[i]["name"].replace('/','／') .replace('\\','＼')
                image =  requests.get(png_url).content
                print("正在存入{}的第{}个皮肤".format(name,i+1))
                with open(r'D:\Users\snackdeng\Desktop\英雄联盟皮肤壁纸\{}\{}.jpg'.format(name,png_name),'wb') as f:
                    f.write(image)
                # urlretrieve(png_url,name + '\\' + png_name + '.jpg')
            else:
                continue

if __name__ == "__main__":
    url = "https://game.gtimg.cn/images/lol/act/img/js/heroList/hero_list.js"
    new = start_url(url)
