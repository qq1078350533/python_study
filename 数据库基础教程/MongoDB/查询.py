import pymongo
client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')   #可加可不加  '/?authSource=admin'
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
result = collection.find_one({'name':'Mike'})
print(result)
