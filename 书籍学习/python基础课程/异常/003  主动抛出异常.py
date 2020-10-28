def input_password():
    #提示用户输入密码
    pwd = input("请输入您的密码：")
    #判断密码长度》8返回用户密码
    if len(pwd) >= 8:
        return pwd

    #《8就主动抛出异常
    print("主动抛出异常")
    #创建异常对象
    ex = Exception("密码长度不够")
    #主动抛出异常
    raise ex
print(input_password())