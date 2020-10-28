<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d0f0af6... 同步更新20201028
import requests
import json


def page():
    url = "https://www.tujia.com/bingo/pc/search/searchhouse?_apitsp=1593310507448&_fasTraceId=1593310508309sX7ArY3n_w1ZbrRK0TQSrpaCtp1ifyk0pDamb"
    headers = {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate, br",
        "Accept-Language": "zh-CN,zh;q=0.9",
        "Connection": "keep-alive",
        "Content-Length": "323",
        "Content-Type": "application/json;charset=UTF-8",
        "Cookie": "tujia_out_site_landingUrl=https%3A%2F%2Fwww.tujia.com%2F; tujia_out_site_referrerUrl=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DXcV4rwr4Izc5F_3NLwzYqHUX1OEdj88WxHanl2gvVgW%26wd%3D%26eqid%3Deb18c99300346a0e000000025ef7fcc8; _fas_uuid=40ac8787-b3e8-4b22-8a38-4203eeab023a-1593310414676; tujia.com_PortalContext_StartDate=2020-06-28; tujia.com_PortalContext_EndDate=2020-06-29; tujia.com_PortalContext_UserToken=00000000-0000-0000-0000-000000000000; tujia.com_PortalContext_UserId=0; gr_user_id=d85563ba-8373-4d23-8eb0-65fa7aea5fa4; gr_session_id_1fa38dc3b3e047ffa08b14193945e261=58f8fc28-d412-440c-aaee-a17752f79907; gr_session_id_1fa38dc3b3e047ffa08b14193945e261_58f8fc28-d412-440c-aaee-a17752f79907=true",
        "Host": "www.tujia.com",
        "LL-INFO": "wprDtcOLwqEDXxBNw7ACwrHDsmzDuxESwrXCmcKmLhVUClHDtcKfwr1ic8OuB8OTw547a8O8w6sTedGaIgJ2R8KDTMKoezTCq8KNGcKUw7rDjG3CgjzCkMKowo/CrcOKJxdBwo4/wrHCqlpnwrTDisKqwoMtwrdPP8Kyc8OZw6TCmBbChmXCqzEzwp3CncKxwrbCsMO3c8KewqBIWcOrJSTCmBbDkcKtOhAFYsKdw5DDhhLDq051wp/CrcKqwoPDssKAw61jw4fDl8OgwpzCtSLDhcKlw4NuMcKLwr7DpcO+wqBEwp96MsOGwqbCj2UgJHcFw6FFwrxnNcKWwqXDlVrCiADDoy3Ci8KUW8KhJ8OVw53CvQ8uC0lTw7AQwrbCjTfCmxbCh8OFe8K1w7EWRsKNwqfDhsOgwpFYBBTCl8OmYsKYwp3CjsKPwqojwrTCnsK/dsOXwoHDvjErDQzCnsK2ZU4fwrxqwrLCrE3DmkzDisKrEzfDnhDCjDIoWzdIOBvCicKpXGl1wrQfwrPDllfDvMOGBUnClFfDg8KNwqkcw75AOBHDk8OJw7XDjkdjw4ArRMKzBw0rOy7CmsKTIMK/w6bDg3DCtsKWYhgAN8KnXBHDr8Ktw77DmHjCvV8Owps2EMKbZMO7VTvDtsOjJipNPHPCksOVIGs7w5RQHSvCjy7DgsKzwoFGw6zCtWg0WCXDuMKpXRXCi1x0F8Ocw4ZiD8KMcsO0aSALwqTDtMOcw6jDp8K8wq/DjGPCosKvfcKBe03Dg8KEwqDDoSUzAMOqP8KWBMO1w48ZwpAawqbCr8ORDykOZ8KBwrc7wpMmd0HCvsKkwpQTwrfDp8Oow77DnMOEDcK5w7AXEsKmMTBDaynCoSVIw7FJNCQlwpzDrMOPwqPCicOgFcKfaVPCrSJUw6vDhsKUM8KbwoPDvmbCuMOqMMOaw5JFYmNjwrU8wqvDksKowobCv8KLMcKbLyfCicOPwrnDkTxew6/DuhfCvjfCmsKSbxc0L8OMZGdgYhZVwp1GAMKkC8KwWyPCssKmERc3FcKUL8O5HH/Dqyt9wqrCvcOUA8OAGCHCvcOAUcOdw7Q/woMyw7DChsOMwrPChQnDrMOAw5Yqw5bCtR1uMcKhw4jDs8K8w5bDvUfDomHCkMOQw7TDl3zDgD3ClnrCsg7CpnPDrcK0",
        "Origin": "https://www.tujia.com",
        "Referer": "https://www.tujia.com/hotel_city48_5-12_10610/?ssr=off",
        "Sec-Fetch-Dest": "empty",
        "Sec-Fetch-Mode": "cors",
        "Sec-Fetch-Site": "same-origin",
        "T-INFO": "17acf7fcef287f6d39eaf1017d962eed6b883e806aa3d98d9e198635a779b8a4877342443a15a8c802c7cf444c6dc70952826f19ec44daba326d767366fb1b3f57bb52f7de5c43f204fe62135e203708z70YYHrh6H+opfjAypu5RP4aRAlBYTTmEiPViYWfTuCIiw==",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36",
        "X-TJCH": "0",
        "X-TJH": "5737dff1c919ad9b086500ab67e5db4b5b85dde2",
        "X-TJP": "24",
        "X-TJTS": "1593310507",
    }
    data = {
        "conditions": [{"type": 1, "value": "48"},
                       {"type": 5, "value": "12_10610"},
                       {"label": "入住日期", "type": 2, "value": "2020-06-28"},
                       {"label": "离店日期", "type": 3, "value": "2020-06-29"}],
        "defaultKeyword": "",
        "onlyReturnTotalCount": "false",
        "pageIndex": "0",
        "pageSize": "12",
        "returnFilterConditions": "true",
        "returnGeoConditions": "true",
        "url": "", }

    response = requests.post(url, headers=headers, data=data).text
    print(response)


if __name__ == '__main__':
    page()
<<<<<<< HEAD
=======
=======
import time
import hashlib
import requests
import base64
from Crypto.Cipher import AES
from Crypto import Random
import json

#
key = 'UVJgCE+OFIff3hK5BT5sPBbGZzjR6FwntjSCwOA9tUQ='
var='eyJpdiI6IkJWMTB1bFJcL25UMkZjVjlyTnRqYnB3PT0iLCJ2YWx1ZSI6IjNvaEJUdXBQZFZjd0Jxek9uUHk2dmtnbStJckNvcnBZSTZqZGpxekxWOHNzRFdFbnRBclZucEpCZ29MR2ZnTndoT2szamtRT2NlWk5NUnRiMFZ4K2dGZUJaZlwvNVRHKytTcncwc0d0UENaU1ZFUXhVbXhYYUVReU9LdVhuZjFwOWR0R29IVDBvd0dhNEpKY3NieTNGTWR4TkxhTXVBUDdRTjAyMCtWVXVtUEt0TlZjVjZ4T0hrU1lUcVRVejBKN25jMmpPbEVLVHc0S3JnN25tMnFlZVc5Y3JvbDRSXC9XWTU2SXFVejNuV2pXUWpuOEtYTk9md3FvQ1owZnBkMlVhWHQrMDJBXC9LOXVKRlNCc1R5MlVoTEdTaktDMU9ibDhJYXZ1SUQyR2FpOUUyXC9pY1hNbTFTQVYrNndTV3phSWFTWERQb0g1NTlsQkwzajJ2b3AyeFpVRWZXXC8xSkxsTFdDbHlPOXY3MDdQeGdVMkExWFpNWjQyQXZ2Z2p4aWpQeE9UY0xRejMwUitEbjNLakFtVld2OU10RThUWGlsM20rTmUxU2YwZTN0c2RXVDRTTUFpUlNKSjJ2TWdacXJNQ2orSlUxXC9PN05XUWx3MkNCeE44ZFJIUThmaUJLTDdUZ2p4ZEloZ09GTWpUQUROR2JlRitmV1FHXC93XC9XVW9qbnJrNm04U3dkbWFcL2N2SlBuXC9LSlVLUVFHY1ZLenUzTXFRMlNJSFExenZRYlwvdnpaS2FhNGdvQ3VcL1lSY0JmbjYxTTZCTzdWRGR3Z3puazBFZStUekhYaHU5RWdEVHJOMzJQTWpERm42aHcxdTFpSThlMFNCVWV5VlFIakl6dGZSdVkwWjl4MzhvTHBmaEE5RlBZZjVsNTRObEM3V3VuOXR3aFBMMlVjT0Z6aUIrRG5jbmpPSU95eDdUc2ZSK2c3R1dCMnhcL2F4VXFuRVNHMTQ0Qnh6Vnh6aXkxRFJiZE9pTWYxQUxGSFU2UnA0U1NnbGtnREZMR2Vwa2E3RFdvenFBazhiMnJ3aG5XT1wvU1hMbitvbnVCMWdlajJmSFRtQVp4eVlxR01Helh0amdzSW1sK1ZnY0FXTXVjWitrNGFJK1FBNFhrN2dqVHpRK1ZpcjNrVVgwRnJaTG5pMWduS0tSRkRtRWhSN09maG81cnN0c1hpM1AreTMwdVdNaUlpZ0Z3VXN1TlpKVEt3ZzQ5WVZwZ2p2Y3VyOVZjdGp0a3FjK0IrYWxRVGFkRloyeDFOdmdZZXNoV2tuQmV6VFJ0YVRvcUdLeVBnMU5ZclJ6K3I0bUR2VHZcL2EzckIzcFY1VFlNa0NrQlQ3TkRjUnNMTEJ6a3IxSThtb2crcjRmdGl1MU9IODNNaGdQQVFnRk5lcm1kRmVcL3VJVmJGOEVscisrQllGc25LemcwazFJQTZQcUNwVUFiNHVkRnBNc1NZc1BRK25sK0lhdSt5UDFtZUZOdVhEK2haOUJEb24yZ0ZkbmNkc1JhN1ZmOEVxN1kxMUpzdkFlWDJnczhnOVUxYVFXa1dSZ3c5bFwvcW5DbjVGRTRiblhJckFTZG9CXC9PV0ZaM1FTcUNpQ29KWVRPbDJTa0lFNllWNXB5YXNqM3BrRTBUb1BNT1RRUFFrY3F0T2QxZGNReHpLUUNDR2Yzd3RoVFlrZVFkazNGVE5MOUxPNm1CMkx1VFFUQXNoblY3bzBvemc3RHl4NnlHdVpkOGdDQ0hMOHRxd0ZyaG5jOXdoUVdsdkpwSEhtTHQzWHhTTW9cLzBsbmhHb0RnYklFODZQWnR5RWEyOVQ3R2xjVVJYZ0RJa1pXSlgrWmFIb2xkZWRIOTVQWmdxXC9mWHNjQkxpcjhuNHBxMVNhRVJUVUZuRUFaT09GNFFwVWZMaFFiUFdOVDgweU85R0Y0OVZKRUZMM2c9PSIsIm1hYyI6IjhlMTc5ZjNiOWIzMzg1NTViNDI3NmNmMGExMWRlZWE2YjM2YzUxNDQwZTZjZWNiN2MxMzM1ZThiYTg0NjZkYmUifQ=='

s=json.loads(base64.b64decode(var))

#sd=base64.encodebytes(key)
sd=base64.b64decode(key)
ssd=base64.b64decode(s['iv'])
sip=AES.new(key,AES.MODE_CBC,iv)
text=sip.decrypt

print(s['value'])



class USE_AES:
    """
    AES
    除了MODE_SIV模式key长度为：32, 48, or 64,
    其余key长度为16, 24 or 32
    详细见AES内部文档
    CBC模式传入iv参数
    本例使用常用的ECB模式
    """

    def __init__(self, key):
        if len(key) > 32:
            key = key[:32]
        self.key = self.to_16(key)

    def to_16(self, key):
        """
        转为16倍数的bytes数据
        :param key:
        :return:
        """
        key = bytes(key, encoding="utf8")
        while len(key) % 16 != 0:
            key += b'\0'
        return key  # 返回bytes

    def aes(self):
        return AES.new(self.key, AES.MODE_ECB) # 初始化加密器

    def encrypt(self, text):
        aes = self.aes()
        return str(base64.encodebytes(aes.encrypt(self.to_16(text))),
                   encoding='utf8').replace('\n', '')  # 加密

    def decodebytes(self, text):
        aes = self.aes()
        return str(aes.decrypt(base64.decodebytes(bytes(
            text, encoding='utf8'))).rstrip(b'\0').decode("utf8"))  # 解密

if __name__ == '__main__':
    a = USE_AES("UVJgCE+OFIff3hK5BT5sPBbGZzjR6FwntjSCwOA9tUQ=").decodebytes("eyJpdiI6IkJWMTB1bFJcL25UMkZjVjlyTnRqYnB3PT0iLCJ2YWx1ZSI6IjNvaEJUdXBQZFZjd0Jxek9uUHk2dmtnbStJckNvcnBZSTZqZGpxekxWOHNzRFdFbnRBclZucEpCZ29MR2ZnTndoT2szamtRT2NlWk5NUnRiMFZ4K2dGZUJaZlwvNVRHKytTcncwc0d0UENaU1ZFUXhVbXhYYUVReU9LdVhuZjFwOWR0R29IVDBvd0dhNEpKY3NieTNGTWR4TkxhTXVBUDdRTjAyMCtWVXVtUEt0TlZjVjZ4T0hrU1lUcVRVejBKN25jMmpPbEVLVHc0S3JnN25tMnFlZVc5Y3JvbDRSXC9XWTU2SXFVejNuV2pXUWpuOEtYTk9md3FvQ1owZnBkMlVhWHQrMDJBXC9LOXVKRlNCc1R5MlVoTEdTaktDMU9ibDhJYXZ1SUQyR2FpOUUyXC9pY1hNbTFTQVYrNndTV3phSWFTWERQb0g1NTlsQkwzajJ2b3AyeFpVRWZXXC8xSkxsTFdDbHlPOXY3MDdQeGdVMkExWFpNWjQyQXZ2Z2p4aWpQeE9UY0xRejMwUitEbjNLakFtVld2OU10RThUWGlsM20rTmUxU2YwZTN0c2RXVDRTTUFpUlNKSjJ2TWdacXJNQ2orSlUxXC9PN05XUWx3MkNCeE44ZFJIUThmaUJLTDdUZ2p4ZEloZ09GTWpUQUROR2JlRitmV1FHXC93XC9XVW9qbnJrNm04U3dkbWFcL2N2SlBuXC9LSlVLUVFHY1ZLenUzTXFRMlNJSFExenZRYlwvdnpaS2FhNGdvQ3VcL1lSY0JmbjYxTTZCTzdWRGR3Z3puazBFZStUekhYaHU5RWdEVHJOMzJQTWpERm42aHcxdTFpSThlMFNCVWV5VlFIakl6dGZSdVkwWjl4MzhvTHBmaEE5RlBZZjVsNTRObEM3V3VuOXR3aFBMMlVjT0Z6aUIrRG5jbmpPSU95eDdUc2ZSK2c3R1dCMnhcL2F4VXFuRVNHMTQ0Qnh6Vnh6aXkxRFJiZE9pTWYxQUxGSFU2UnA0U1NnbGtnREZMR2Vwa2E3RFdvenFBazhiMnJ3aG5XT1wvU1hMbitvbnVCMWdlajJmSFRtQVp4eVlxR01Helh0amdzSW1sK1ZnY0FXTXVjWitrNGFJK1FBNFhrN2dqVHpRK1ZpcjNrVVgwRnJaTG5pMWduS0tSRkRtRWhSN09maG81cnN0c1hpM1AreTMwdVdNaUlpZ0Z3VXN1TlpKVEt3ZzQ5WVZwZ2p2Y3VyOVZjdGp0a3FjK0IrYWxRVGFkRloyeDFOdmdZZXNoV2tuQmV6VFJ0YVRvcUdLeVBnMU5ZclJ6K3I0bUR2VHZcL2EzckIzcFY1VFlNa0NrQlQ3TkRjUnNMTEJ6a3IxSThtb2crcjRmdGl1MU9IODNNaGdQQVFnRk5lcm1kRmVcL3VJVmJGOEVscisrQllGc25LemcwazFJQTZQcUNwVUFiNHVkRnBNc1NZc1BRK25sK0lhdSt5UDFtZUZOdVhEK2haOUJEb24yZ0ZkbmNkc1JhN1ZmOEVxN1kxMUpzdkFlWDJnczhnOVUxYVFXa1dSZ3c5bFwvcW5DbjVGRTRiblhJckFTZG9CXC9PV0ZaM1FTcUNpQ29KWVRPbDJTa0lFNllWNXB5YXNqM3BrRTBUb1BNT1RRUFFrY3F0T2QxZGNReHpLUUNDR2Yzd3RoVFlrZVFkazNGVE5MOUxPNm1CMkx1VFFUQXNoblY3bzBvemc3RHl4NnlHdVpkOGdDQ0hMOHRxd0ZyaG5jOXdoUVdsdkpwSEhtTHQzWHhTTW9cLzBsbmhHb0RnYklFODZQWnR5RWEyOVQ3R2xjVVJYZ0RJa1pXSlgrWmFIb2xkZWRIOTVQWmdxXC9mWHNjQkxpcjhuNHBxMVNhRVJUVUZuRUFaT09GNFFwVWZMaFFiUFdOVDgweU85R0Y0OVZKRUZMM2c9PSIsIm1hYyI6IjhlMTc5ZjNiOWIzMzg1NTViNDI3NmNmMGExMWRlZWE2YjM2YzUxNDQwZTZjZWNiN2MxMzM1ZThiYTg0NjZkYmUifQ")
    print(a)
>>>>>>> 60b95f6... 同步更新20201028
>>>>>>> d0f0af6... 同步更新20201028
