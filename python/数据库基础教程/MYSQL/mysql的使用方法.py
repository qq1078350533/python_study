import pymysql

def main():
    # 连接数据库
    connection = pymysql.connect(host='localhost',port=3306,user='root',password='snackdeng',charset='utf8')


    # 制造mysql的游标
    re = connection.cursor()

    # 要执行的语句
    re.execute('select * from banji where class <10')

    # 显示所有结果 元组的方式返回
    result = re.fetchall()

    # 显示第一个结果
    # result = cursor.fetchall()

    # 显示几条结果
    # result = cursor.fetchmany(number)

    for data in result:
        print(data)

    # 关闭游标
    re.close()

    # 关闭数据库的连接
    connection.close()

if __name__ == "__main__":
    main()