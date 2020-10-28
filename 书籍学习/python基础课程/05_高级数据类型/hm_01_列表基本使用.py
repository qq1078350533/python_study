name_list = ["zhangsan","lisi","wangwu"]
print(name_list[2])
#查找数据的具体位置
print(name_list.index("lisi"))
#修改数据
name_list[1] = "李四"
# 增加数据到具体位置
name_list.insert(1,"snackdeng")
#末尾增加数据
name_list.append("luojuan")
#将列表2的数据加到列表1中
snackden = ["juanshabi"]
name_list.extend(snackden)
#删除
del name_list[0]
#remove可以删除指定数据
name_list.remove("wangwu")
#pop可删除最后一个数据
name_list.pop()
#删除指定位置的数据
name_list.pop(0)
#可以清除列表
name_list.clear()





print(name_list)


