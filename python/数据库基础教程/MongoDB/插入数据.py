import pymongo
client = pymongo.MongoClient('mongodb://localhost:27017')   #可加可不加  '/?authSource=admin'
studentl = {
    'id':'20170101',
    ' name':'Jordan',
    'age': 20,
    'gender': 'male'
}
student2 = {
    'id':'20170202',
    'name':'Mike',
    'age':21,
    'gender':'tmale'
}
db = client.test
collection = db.students
# 增加一条消息
# result = collection.insert_one(studentl)
# 增加多条消息
result = collection.insert_many( [ studentl, student2])
print(result)
print(result.inserted_ids)