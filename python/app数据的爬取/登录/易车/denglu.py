"""
app版本：10.29.0  登录解密

POST /app-biz-svc/user/login h2
Host: appapi-gw.yiche.com
appver: 10.29.0
devid: 862846363896419
user-agent: bitauto.application (Android; zh_CN)
channelid: c288
dvid: be43ac7095265b2efcb7f5f2d652efde
reqid: 8cde478b-ef08-47e7-97cf-b7cdee97fb4d
gudslf: 277f2cf6-d241-4ae6-994f-809675a298ff
uidl:
osl: 1
osvl: 7.1.2
content-type: application/x-www-form-urlencoded
content-length: 190
accept-encoding: gzip

token=DKdUu4Hc9Q4L1Alju6jT93yi8%2B%2BgpLII1EQZuZ9KKw6cbYPQfhavyYawYTJbMzjWfXCs7M4PfgQZyS02MGUguk6tluRuZ1xjuyRjFmD72mzvH%2FJKosM1RiREoFtQE3Ti%2FAiE3liQHBAlrxGlhje1q4qf6PXXE0OwAuajUW4o%2FmM%3D
结果   DKdUu4Hc9Q4L1Alju6jT93yi8++gpLII1EQZuZ9KKw6cbYPQfhavyYawYTJbMzjWfXCs7M4PfgQZyS02MGUguk6tluRuZ1xjuyRjFmD72mzvH/JKosM1RiREoFtQE3Ti/AiE3liQHBAlrxGlhje1q4qf6PXXE0OwAuajUW4o/mM=
      DKdUu4Hc9Q4L1Alju6jT93yi8++gpLII1EQZuZ9KKw6cbYPQfhavyYawYTJbMzjWfXCs7M4PfgQZyS02MGUguk6tluRuZ1xjuyRjFmD72mzvH/JKosM1RiREoFtQE3Ti/AiE3liQHBAlrxGlhje1q4qf6PXXE0OwAuajUW4o/mM=
"""


from enc_des import des_CBC
from urllib import parse

if __name__ == '__main__':
    #    public static byte[] O000000o = {109, 114, 88, 110, 53, 112, 72, 88};  key
    # public static byte[] O00000Oo = {107, 57, 53, 56, 57, 73, 97, 117}; iv
    text = '{"loginName":"13348789639","deviceId":"862846363896419","imei":"862846363896419","userPwd":"111111","mac":"08:00:27:09:fe:9e"}'
    key = "".join([chr(x) for x in [109, 114, 88, 110, 53, 112, 72, 88]]).encode("utf-8")
    iv = "".join([chr(x) for x in [107, 57, 53, 56, 57, 73, 97, 117]]).encode("utf-8")
    print(str(key),str(iv))
    d = des_CBC(key,iv,text)
    token = d.des_encrypt().strip()
    print(token)
    token = parse.quote(token)
    print(token)

