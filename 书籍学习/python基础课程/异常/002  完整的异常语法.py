try:
    num = int(input("输入一个整数："))

    result = 8/num

    print(result)
except ValueError:
    print("未知错误")

except Exception as result:
    print("未知错误{}".format(result))
else:
    print("测试成功")
finally:
    print("无论是否错误都会执行")
print("_"*50)