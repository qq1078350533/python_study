# 静态SQL语句
# import pymysql
#
# id = '20120001'
# user = 'Bob'
# age = 20
#
#  db.createUser({user:'root',pwd:'snackdeng',roles:['root']})
# cursor = db.cursor()
# sql = 'insert into students(id,name,age) values (%s,%s,%s)'
# try:
#     cursor.execute(sql,(id,user,age))
#     db.commit()
# except:
#     db.rollback()
# db.close()

# SQL动态语句
import pymysql
db = pymysql.connect(host='localhost',user='root',password='snackdeng',port=3306,db='spiders')

cursor =db.cursor()
data = {
    'id':'20120001',
    'name':'Bob',
    'age':20
}
table = 'students'
keys = ','.join(data.keys())
values = ','.join(['%s'] * len(data))
sql = 'insert into {students}({keys}) values ({values})'.format(students=table,keys=keys,values=values)
try:
    if cursor.execute(sql,tuple(data,values())):
        print('successful')
        db.commit()
except:
    print('Failed')
    db.rollback()
db.close()