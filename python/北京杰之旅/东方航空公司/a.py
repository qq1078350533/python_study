import requests
"""
[{'domain': '.passport.ceair.com', 'expiry': 1655605284, 'httpOnly': False, 'name': '_ga', 'path': '/', 'secure': False, 'value': 'GA1.3.1225349065.1592533279'}, {'domain': '.ceair.com', 'expiry': 1592533339, 'httpOnly': False, 'name': '_gat', 'path': '/', 'secure': False, 'value': '1'}, {'domain': '.ceair.com', 'expiry': 1592535083, 'httpOnly': False, 'name': '84bb15efa4e13721_gr_session_id', 'path': '/', 'secure': False, 'value': '8b67870c-64a0-47ff-bda6-e8f622ebaeb4'}, {'domain': '.ceair.com', 'expiry': 1907893283, 'httpOnly': False, 'name': 'gr_user_id', 'path': '/', 'secure': False, 'value': '6ca0d242-0d83-4be3-a410-8e98877aac72'}, {'domain': '.ceair.com', 'expiry': 1592533339, 'httpOnly': False, 'name': '_gat_UA-80008755-11', 'path': '/', 'secure': False, 'value': '1'}, {'domain': '.ceair.com', 'expiry': 1655605283, 'httpOnly': False, 'name': '_ga', 'path': '/', 'secure': False, 'value': 'GA1.2.1225349065.1592533279'}, {'domain': '.passport.ceair.com', 'expiry': 1592619684, 'httpOnly': False, 'name': '_gid', 'path': '/', 'secure': False, 'value': 'GA1.3.302139910.1592533279'}, {'domain': '.ceair.com', 'expiry': 1592535083, 'httpOnly': False, 'name': '84bb15efa4e13721_gr_session_id_8b67870c-64a0-47ff-bda6-e8f622ebaeb4', 'path': '/', 'secure': False, 'value': 'true'}, {'domain': 'passport.ceair.com', 'expiry': 1924905600, 'httpOnly': False, 'name': 'apdid_data', 'path': '/', 'secure': False, 'value': '%7B%22time%22%3A1592533282166%2C%22token%22%3A%22APDIDJS_donghang_5b3bf2488ca6710fe8c42d7e36d3e194%22%7D'}, {'domain': '.ceair.com', 'httpOnly': True, 'name': 'user_ta_session_id', 'path': '/', 'secure': False, 'value': '630ac1e0-9e1d-48a3-9cdc-b5d7e67acefc'}, {'domain': '.ceair.com', 'expiry': 1608301279, 'httpOnly': False, 'name': 'ecrmWebtrends', 'path': '/', 'secure': False, 'value': '111.197.137.48.1592533278815'}, {'domain': '.ceair.com', 'expiry': 1608085278, 'httpOnly': False, 'name': 'language', 'path': '/', 'secure': False, 'value': 'zh_CN'}, {'domain': '.ceair.com', 'expiry': 1907893279, 'httpOnly': False, 'name': 'grwng_uid', 'path': '/', 'secure': False, 'value': '87d5b026-0df2-4e91-93bc-9a397dd28799'}, {'domain': '.ceair.com', 'expiry': 1592619683, 'httpOnly': False, 'name': '_gid', 'path': '/', 'secure': False, 'value': 'GA1.2.302139910.1592533279'}, {'domain': '.ceair.com', 'expiry': 1608085277, 'httpOnly': False, 'name': 'Webtrends', 'path': '/', 'secure': False, 'value': 'ae630f74.5a8668c40f8ec'}]


"""
class Ceairs():
    def __init__(self):
        self.headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36",
            "Host": "passport.ceair.com"
        }
        self.s = requests.session()


    def get_geetInit(self,cookies):
        cookieStr = {}
        for cookie in cookies:
            name = cookie["name"]
            value = cookie["value"]
            cookieStr[name] = value
        # print("第一次", cookieStr)
        headers = self.headers
        headers["Referer"] = "Referer: https://passport.ceair.com/popup.html?callback874&site=1&isAlert=1&redirectUrl=http://www.ceair.com/LoginCallback.html?callback874&membership=1"
        url = 'https://passport.ceair.com/cesso/geet!geetInit.shtml'
        s = requests.session()
        s.cookies = cookieStr
        response = requests.post(url=url, headers=headers)
        # cookie1 = s.cookies
        # print(cookie1)
        # print('第二次', requests.utils.dict_from_cookiejar(cookie1))
        date = response.json()
        gt = date["gt"]
        challenge = date["challenge"]
        challenge, validate = self.api(gt, challenge)
        cook = self.login(challenge, validate )
        cookieStr.update(cook)
        return cookieStr


    def api(self,gt, challenge):
        re = requests.get(
            url = f"http://api.geev.top/geetest/tzfresh?gt={gt}&challenge={challenge}&token=sbsiDHkm47896rud&refer=")
        # print(requests.utils.dict_from_cookiejar(re.cookies))
        res = re.json()
        challenge = res['challenge']
        validate = res['validate']

        return challenge , validate


    def login(self,challenge, validate):
        headers = self.headers
        headers["Referer"] = "https://passport.ceair.com/popup.html?callback699&site=1&isAlert=1&redirectUrl=http://www.ceair.com/LoginCallback.html?callback699&membership=1"
        headers["Accept"] = 'Accept: application/json, text/javascript, */*; q=0.01'
        headers["Content-Type"] = "application/x-www-form-urlencoded; charset=UTF-8"
        data = {
            "user": "432522199808011393",
            "password": "MTk5ODA4MDE=",
            "token": "APDIDJS_donghang_f73197b5bc4d4cd441aa2363e8e5828a",
            "ltv": 1,
            "at": 1,
            "validateType": "geek",
            "geetest_challenge": challenge,
            "geetest_seccode": validate + "|jordan",
            "geetest_validate": validate
        }
        url = "https://passport.ceair.com/cesso/login-static!auth.shtml"
        res = self.s.post(
            url=url,
            headers=headers,
            data=data
            )
        cookie = self.s.cookies
        cookies1 = requests.utils.dict_from_cookiejar(cookie)
        return cookies1


    # def run(self,cookies):
    #     # cookies = [{'domain': '.passport.ceair.com', 'expiry': 1655605284, 'httpOnly': False, 'name': '_ga', 'path': '/', 'secure': False, 'value': 'GA1.3.1225349065.1592533279'}, {'domain': '.ceair.com', 'expiry': 1592533339, 'httpOnly': False, 'name': '_gat', 'path': '/', 'secure': False, 'value': '1'}, {'domain': '.ceair.com', 'expiry': 1592535083, 'httpOnly': False, 'name': '84bb15efa4e13721_gr_session_id', 'path': '/', 'secure': False, 'value': '8b67870c-64a0-47ff-bda6-e8f622ebaeb4'}, {'domain': '.ceair.com', 'expiry': 1907893283, 'httpOnly': False, 'name': 'gr_user_id', 'path': '/', 'secure': False, 'value': '6ca0d242-0d83-4be3-a410-8e98877aac72'}, {'domain': '.ceair.com', 'expiry': 1592533339, 'httpOnly': False, 'name': '_gat_UA-80008755-11', 'path': '/', 'secure': False, 'value': '1'}, {'domain': '.ceair.com', 'expiry': 1655605283, 'httpOnly': False, 'name': '_ga', 'path': '/', 'secure': False, 'value': 'GA1.2.1225349065.1592533279'}, {'domain': '.passport.ceair.com', 'expiry': 1592619684, 'httpOnly': False, 'name': '_gid', 'path': '/', 'secure': False, 'value': 'GA1.3.302139910.1592533279'}, {'domain': '.ceair.com', 'expiry': 1592535083, 'httpOnly': False, 'name': '84bb15efa4e13721_gr_session_id_8b67870c-64a0-47ff-bda6-e8f622ebaeb4', 'path': '/', 'secure': False, 'value': 'true'}, {'domain': 'passport.ceair.com', 'expiry': 1924905600, 'httpOnly': False, 'name': 'apdid_data', 'path': '/', 'secure': False, 'value': '%7B%22time%22%3A1592533282166%2C%22token%22%3A%22APDIDJS_donghang_5b3bf2488ca6710fe8c42d7e36d3e194%22%7D'}, {'domain': '.ceair.com', 'httpOnly': True, 'name': 'user_ta_session_id', 'path': '/', 'secure': False, 'value': '630ac1e0-9e1d-48a3-9cdc-b5d7e67acefc'}, {'domain': '.ceair.com', 'expiry': 1608301279, 'httpOnly': False, 'name': 'ecrmWebtrends', 'path': '/', 'secure': False, 'value': '111.197.137.48.1592533278815'}, {'domain': '.ceair.com', 'expiry': 1608085278, 'httpOnly': False, 'name': 'language', 'path': '/', 'secure': False, 'value': 'zh_CN'}, {'domain': '.ceair.com', 'expiry': 1907893279, 'httpOnly': False, 'name': 'grwng_uid', 'path': '/', 'secure': False, 'value': '87d5b026-0df2-4e91-93bc-9a397dd28799'}, {'domain': '.ceair.com', 'expiry': 1592619683, 'httpOnly': False, 'name': '_gid', 'path': '/', 'secure': False, 'value': 'GA1.2.302139910.1592533279'}, {'domain': '.ceair.com', 'expiry': 1608085277, 'httpOnly': False, 'name': 'Webtrends', 'path': '/', 'secure': False, 'value': 'ae630f74.5a8668c40f8ec'}]
    #     self.get_geetInit(cookies)