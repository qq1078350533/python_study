students = [
    {"name": "阿土"},
    {"name": "小美"}
]
#学员列表中搜素指定的姓名
find_name = "张三"

for stu_dict in students:
    print(stu_dict)
    if stu_dict["name"] == find_name:
        print("找到了 %s" % find_name)
        #如果已经找到直接退出循环
        break
    #else:
else:
    # 如果希望在搜素列表没有找到得到一个提示
    print("抱歉没有找到 %s" % find_name)
print("循环结束")