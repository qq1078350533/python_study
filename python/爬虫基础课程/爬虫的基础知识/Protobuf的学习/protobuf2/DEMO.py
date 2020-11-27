# -*- coding: utf-8 -*-
# @Time : 2020-11-25 16:21 
# @Author : Snackdeng

from test_pb2 import UserInfo

def test():
    user = UserInfo()
    user.name = 'snackdeng'
    user.age = 18
    str_to_Protobuf = user.SerializeToString()  # 把普通文字编码成Protobuf格式
    Protobuf_to_str = user.ParseFromString(str_to_Protobuf)  # 把protobuf格式转化为str
    print(user)
    print(str_to_Protobuf)
    print(Protobuf_to_str)

if __name__ == '__main__':
    test()