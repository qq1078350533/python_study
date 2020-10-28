import csv
with open('data.csv', 'a') as f:
    # 初始化写入对象，传入改句柄 # 列表写入的方法
    writer = csv.writer(f, delimiter=' ')
    writer.writerow(['id', 'name', 'age'])
    writer.writerow(['1001', 'Mike', 20])
    writer.writerow(['1002', 'deng', 34])
    writer.writerow(['1003', 'snack', 58])
    # 字典写入的方法
    filednames = ['id', 'name', 'age']
    writer = csv.DictWriter(f, fieldnames=filednames)
    writer.writeheader()
    writer.writerow({'id':'1001', 'name':'Mike', 'age':20})
    writer.writerow({'id':'1002', 'name':'deng', 'age':27})