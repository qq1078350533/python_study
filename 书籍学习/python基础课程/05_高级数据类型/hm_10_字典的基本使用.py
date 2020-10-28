snackdeng = {"name": "xiaoming"}

#取值
print(snackdeng["name"])
#print(snackdeng["name123"])
#增加/修改
snackdeng["age"] = 18
snackdeng["name"] = "xiaoxiaoming"
#删除
snackdeng.pop("name")
#snackdeng.pop("name123")

print(snackdeng)