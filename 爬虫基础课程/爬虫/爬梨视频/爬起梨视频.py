import requests
import re
<<<<<<< HEAD
import MySQLdb
=======
<<<<<<< HEAD
import MySQLdb
=======

>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028

headers = {'user-agent':'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'}
# 1确定url
url = 'https://www.pearvideo.com/'
res = requests.get(url,headers=headers).text
#print(res)
ids = re.findall('href="video_(.*?)"',res)
ids_name1 = re.findall('class="vervideo-name">(.*?)<',res)
ids_name2 = re.findall('class="vervideo-title">(.*?)<',res)
ids_name1.extend(ids_name2)
#print(urls)
for i in range(len(ids)):
    #print(id)
    new_url = 'https://www.pearvideo.com/video_' + ids[i]
    #print(new_url)
    shiping = requests.get(new_url).content
    with open("./梨视频/{}.mp4".format(ids_name1[i]),'wb') as py:
        py.write(shiping)