import urllib.request
import gevent
from gevent import monkey

# 检测到延迟，堵塞时切换协程
monkey.patch_all()

def downloader(name,img_url):
    re = urllib.request.urlopen(img_url)
    img_content = re.read()
    with open(name,'wb') as f:
        f.write(img_content)
# https://rpic.douyucdn.cn/live-cover/appCovers/2019/12/15/1282190_20191215030531_small.jpg/webpdy1


def main():
    gevent.joinall([
        gevent.spawn(downloader,"1.jpg",'https://rpic.douyucdn.cn/live-cover/roomCover/2019/12/23/3c6136e65df164483463410193c104bb_big.png/webpdy1'),
        gevent.spawn(downloader,"2.jpg",'https://rpic.douyucdn.cn/live-cover/roomCover/2019/12/20/cb1c7643d66d72074126ec103b025e52_big.jpg/webpdy1'),
    ])


if __name__ == "__main__":
    main()
