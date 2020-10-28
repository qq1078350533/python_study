import requests

#需要请求的目标地址
url = 'https://music.163.com/#/playlist?id=979321026'

#登录请求的地址
loginurl = 'https://music.163.com/weapi/login/cellphone?csrf_token='

#请求头
headers = {
    'user-agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'}

 #如果需要爬虫程序主动记录cookie并且携带cookie，可以在requests之前调用session的方法
#并且使用session方法返回的对象发送请求即可
req = requests.session()

#登录请求时的数据
data = {'params': 'uh9r/662q/qpJ002vz56atYUl8eqIJhXuw02mQULhv6M1tGG/1ADtpC1giz1A7B197l6GHnc7Npb4QdX84XEsojLyeIAmex75pSDlZ6h7ZZ8nXNCBvKg+PaCk8luRQvVuH97lBQRNELAjKV6nWTNfVBP+Rq6QKIl3mLRauL+3I4FFESbTVD0vqFqtFEGM8GRtWVbS8WPSQf9FwHMcAIlg0ICCRjvZ/g/NSk+fanw8TElRccLf0xP+9rebV2jzk9J2fnT1sXgx7zGFksqawHD3srE3rGmtxCgj9AnqNkrTgZwZxAABO40xGAgSPrLL6MZADqQAu10/gmmw/Mri8W9dDTBqkkaGLKW56iDiKcysf5HkurZsYWjG4NekD2cYGQiC7bgZApPprLmFJUVxDfnumtNqNvxX73tBZC1uRuNg/h2h/4ATgPpdqy/e35VL7SG5YmG5KnlHD3Bl/XV3cfsKYEsq6vOD5Kzelt58DlXHQpOw5eO3WEtFE1iGckIT+sFdb9eT+PEByuM/5oGrGXrxYTdf3/V9TgReOOFHrwZuR4=',
'encSecKey': 'c2daa0d5c216ff670acb939504a3dc68f4e18f950adf36c21ecf55c59c848449aac47c0767b34e8b7884a64221fc22a1dc8b99f3a29802b3ea940cc6d265d2507681ef5a7fbfe1fe2ec5002efa5be6fb770f2a24d21eeabbca3a57a0fd57cdc87ed539b7ab03383ab2b977994678d7a4d3ff02b93febd2b6b81fb0de9d3b50ad'}

#发起登录请求
res = req.post(url=loginurl,headers=headers,data=data)
#判断状态
code = res.status_code
print(code)

#保存数据
if code == 200:
    #发起新的请求
    res = req.get(url = url,headers=headers)
    with open('rr.html','w',encoding='utf-8') as fp:
        fp.write(res.text)
