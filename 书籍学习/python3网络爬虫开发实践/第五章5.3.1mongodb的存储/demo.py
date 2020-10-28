import pymongo

client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')   #可加可不加  '/?authSource=admin'
db = client.person
collection = db.student

# 插入数据
# student = {
#     'id': '20170101',
#     'name': 'Jordan',
#     'age': 20,
#     'gender': 'magle'
# }
# result = collection.insert_one(student)
# print(result)

# 查询数据
result = collection.find_one({'name': 'Jordan'})
print(result)