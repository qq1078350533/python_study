#1: cd 这个文件目录下
# copy /b *.ts 无名之辈.mp4
import requests
for i in range(1600):
    url = 'https://youku.cdn7-okzy.com/20200128/16882_5055fd4b/1000k/hls/818a5320d9100{:04}.ts'.format(i)
    print(url)
    r = requests.get(url)
    ret = r.content
    with open('video/{}'.format(url[-10:]),'wb') as f:
        f.write(ret)
