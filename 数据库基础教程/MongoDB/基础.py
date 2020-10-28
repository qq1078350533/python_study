import pymongo
client = pymongo.MongoClient('mongodb://admin:snackdeng@localhost:27017')   #可加可不加  '/?authSource=admin'
#client = MongoClient('mongodb://localhost:27017/')

#连接库
db = client.test
#db = client['test']

#连接集合（表）
collection = db.students
#collection = db['students']
