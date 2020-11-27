# -*- coding: utf-8 -*-
# @Time : 2020-11-25 16:21 
# @Author : Snackdeng

import uuid
import time
import random
import string
from test_pb2 import LoginType, LoginReq


# 实例化
req = LoginReq()
req.sig = uuid.uuid4().hex

# 枚举变量
req.login_type = LoginType.WEICHAT
req.openid = 'openid_{}'.format(int(time.time()))
req.channel = '-'.join(random.sample(string.ascii_uppercase, 6))
req.version = 'v{}'.format(random.randint(10, 200))

random_list = string.ascii_lowercase + string.ascii_uppercase + string.digits
req.device_id = ''.join(random.sample(random_list, 25))

req.mac_id = '-'.join(random.sample(string.ascii_lowercase +
                                    string.digits, 10))

# repeated 的两种填充方式，和 protobuf2 不同
req.login_num.append(1)
req.login_num.extend([2, 3, 4])

# 序列化成二进制字符串
data = req.SerializeToString()

# 解析实例化
req_parse = LoginReq()
# 二进制字符串反序列化
req_parse.ParseFromString(data)

print(type(req_parse), req_parse)
print(req_parse.sig, req_parse.login_type,
      req_parse.openid, req_parse.login_num)
print(data)