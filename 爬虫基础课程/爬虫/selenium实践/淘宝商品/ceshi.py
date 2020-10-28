cookieStr = "language=zh_CN; ecrmWebtrends=111.197.137.48.1592363808667; Webtrends=111.197.137.48.1592363808691264; user_ta_session_id=2ae330b7-0da9-400a-bf32-0597749c99d1; _ga=GA1.2.393670503.1592363811; _gid=GA1.2.1551981789.1592363811; gr_user_id=8d2420e6-64fa-4ab9-b76f-18d62e144a38; grwng_uid=85bbcd83-82d4-4ee6-a10a-a641a038d27d; ffpno=432522199808011393; passportId=548970905CE12B142966BF781911666F; 84bb15efa4e13721_gr_last_sent_cs1=548970905CE12B142966BF781911666F; user_cookie=true; JSESSIONID=mar5LSV65YH0qn1yIH8NviNU.laputaServer3; 84bb15efa4e13721_gr_session_id=ca214e08-629c-4443-951e-3e0ffd2e9e80; 84bb15efa4e13721_gr_last_sent_sid_with_cs1=ca214e08-629c-4443-951e-3e0ffd2e9e80; 84bb15efa4e13721_gr_session_id_ca214e08-629c-4443-951e-3e0ffd2e9e80=true; com.ceair.cesso=8199E9A7B67D3797F18AB3F61971468DEED96E201276B81B47FC29193ADC0C2A; 84bb15efa4e13721_gr_cs1=548970905CE12B142966BF781911666F"
cookies = {}
for line in cookieStr.split(';'):
    name, value = line.strip().split('=', 1)
    cookies["name"] = name
    cookies["value"] = value
    print(cookies)