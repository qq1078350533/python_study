import requests

#定义请求
url = 'https://music.163.com/#/playlist?id=979321026'

#定义请求头信息
headers = {
    'user-agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',
    'cookie':'_iuqxldmzr_=32; _ntes_nnid=03047f4630daaacb58988b1f58eb92f6,1575951275801; _ntes_nuid=03047f4630daaacb58988b1f58eb92f6; WM_TID=fXS4jLzR3%2FpBQBQAEBN47L28QHEMNd3k; JSESSIONID-WYYY=dXDyzkOs6RJD3d2YQGS%2Bs8ayODOtZuyq2ZOCteKRPFXAjyYJExOUMRJ%2FCq3HOyYK6U1FMArjtQ1TMRXOmK9ukY5ggafdczEAcGRW0higAgwQhM4wpjvdY99XImB7CnMTYRA6cEgm6wK6l0znpm9PPBYB9w94nMSeo%5C%5C7%5C6zf2yl2dXRu%3A1576040538753; WM_NI=F0eEIocm2EsMNFdO7jdY%2FpgS6hn3X4HzE0yTOOwHAS%2FdWfkeuY%2FJgddmHqNtsWzsSHSB7dbyl7TH3eaRWbtnypJfsMX8BhNaWNNOYnwW3gAVDOmud%2FtpRTo8ApY6zgQFVUg%3D; WM_NIKE=9ca17ae2e6ffcda170e2e6ee88ea68abe8ffb6cc488d868ab3c84b968b8e84f23d90e781a4ee3abcab87b4ca2af0fea7c3b92a86f0aba6cc65a1b3fea6f2478e9aacb0b662a887e191e659f6b8a2d4db408ca68bd1fc608d91b9a9c459edbc9987ea6fb787e1abe670a8b38892cd80b189b694d244919ef985e173b0e99ca9b26fa38e9983f766bbb08687f2479ce88e89cd6b959282b0dc66b589fd88c45e8891a396e725b8b09eb5ee3483b097d7f96d939a9ab6e637e2a3; ntes_kaola_ad=1; __remember_me=true; MUSIC_U=2f4efdde0bce0ab249463c5838d931a10a24488ca4fc12a089ebb373137e22cabf763658b05fd7487f4a22cde731d76541049cea1c6bb9b6; __csrf=b63b51af704a8e3cd036cedb64a2e26c'
}

#发起get请求
res = requests.get(url=url,headers=headers)
code = res.status_code
print(code)

if code == 200:
    with open('./test.html','w',encoding='utf-8') as fp:
        fp.write(res.text)