#   1导包
import pymysql

#  2创建连接

host = 'localhost'
uesr = 'root'
passwd =  'snackdeng'
port = '3306'
database = 'spiders'
cursorclass = pymysql.cursors.DictCursor # 使存储的数据用字典的形式存在列表中（可有可无）
db = pymysql.connect(host,uesr,passwd,database,cursorclass=cursorclass)

#  3生成游标对象，可以控制当前的语句执行到哪
cursor = db.cursor()

#  4编写SQL语句
sql = 'show databases'  #必须为SQL原生语句
cursor.execute(sql)

#  5输出结果
print(cursor.fetchone()) # fetchone是单条输出
print(cursor.fetchall()) #fetchall是多条输出            #这三个输出的是一个元组
print(cursor.fetchmany(2))  #fetchmany是输出前几条

#  6关闭连接
cursor.close() #关闭游标对象
db.close()  #关闭数据库