import pymysql

db = pymysql.connect(host='localhost', user='root', password='snackdeng', port=3306, db='spiders')
# 创建一个操作游标
cursor = db.cursor()
# 创建一个spiders的数据库
# cursor.execute('CREATE DATABASE spiders DEFAULT CHARACTER SET utf8')
# 创建一个students表
# sql = 'CREATE TABLE IF NOT EXISTS student (id VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, age INT NOT NULL, PRIMARY KEY (id))'
# cursor.execute(sql)
# 导入数据
data = {
    'id': '20120001',
    'name': 'Bob',
    'age': 29
}
table = 'student'
keys = ','.join(data.keys())
values = ', '.join(['%s'] * len(data))

# 插入数据
sql = 'INSERT INTO {table}({keys}) VALUES ({values})' .format(table=table, keys=keys, values=values)
try:
    if cursor.execute(sql, tuple(data.values())):
        print('Successful')
        # 对于数据库的增删改查，需要调用commit（）方法
        db.commit()
except:
    print('Failed')
    # 保存就回滚
    db.rollback()

# 更新数据
# 如果主键已经存在，就执行更新操作
# sql = 'INSERT INTO {table}({keys}) VALUES ({values}) ON DUPLICATE KEY UPDATE' .format(table=table, keys=keys, values=values)
# update = ','.join([" {key} = %s".format(key=key) for key in data])
# sql += update
# try:
#     if cursor.execute(sql, tuple(data.values()) * 2):
#         print('Successful')
#         # 对于数据库的增删改查，需要调用commit（）方法
#         db.commit()
# except:
#     print('Failed')
#     # 保存就回滚
#     db.rollback()

# 删除数据
# condition = 'age >20'
# sql = 'DELETE FROM {table} WHERE {condition}'.format(table=table, condition=condition)
# try:
#     cursor.execute(sql)
#     print('Successful')
#     # 对于数据库的增删改查，需要调用commit（）方法
#     db.commit()
# except:
#     print('Failed')
#     # 保存就回滚
#     db.rollback()

# 查询数据
# sql = 'SELECT * FROM student WHERE age >= 20'
# try:
#     cursor.execute(sql)
#     result = cursor.fetchall()
#     print(result)
#     print('Successful')
#     # 对于数据库的增删改查，需要调用commit（）方法
#     db.commit()
# except:
#     print('Failed')
#     # 保存就回滚
#     db.rollback()

db.close()