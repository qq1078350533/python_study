import pymongo

# 连接数据库
# client = pymongo.MongoClient(host='localhost',port=27017,user='admin',passwd='snackdeng')
client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')   #可加可不加  '/?authSource=admin'
# 选择实例
person = client.person
# 选择集合
student = person.student
# 操作数据
# result = student.find()

# 遍历列表
# for r in result:
#     print(r)
# 取第一个
# print(result.next())

# 过滤条件
# result = student.find({"name":"刘备"})
# 遍历列表
# for r in result:
#     print(r)

# 排序 pymongo.DESCENDING（-1）降序   pymongo.ASCENDING（1）升序
# result = student.find().sort('_id',1)
# # 遍历列表
# for r in result:
#     print(r)

# 分页 偏移
# result = student.find().limit(1).skip(2) # 从1开始
# for r in result:
#     print(r)

# 数量
# result = student.find().count()
# print(result)

# 增加数据
# data = {
#     'name':'大乔',
#     "age":'29'
# }
# student.insert(data)

# 删除数据
# data = {
#     'name':'大乔',
#     "age":'29'
# }
# student.remove(data)

# 改数据
data = {'name':'刘备'}
result = student.find_one(data)
result['name'] = '孙权'
student.update(data,{'$set':result})