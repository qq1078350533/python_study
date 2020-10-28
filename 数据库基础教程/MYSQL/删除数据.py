import pymysql
db = pymysql.connect(host='localhost',user='root',password='snackdeng',port=3306,db='spiders')

cursor =db.cursor()
data = {
    'id':'20120001',
    'name':'Bob',
    'age':21
}
table = 'students'
condition = 'age > 20'
sql = 'delete from {} where {}'.format(table,condition)
try:
    cursor.execute(sql)
    db.commit()
except:
    db.rollback()
db.close()