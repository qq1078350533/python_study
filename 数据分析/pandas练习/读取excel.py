import pandas as pd
# header=1 的意义是从第二行取数据（可能第一行数据乱码）默认header=0即为excel的第一行
people = pd.read_csv('lianjia.csv',header=1)
# 显示行列数
print(people.shape)
# 显示列表标题名
print(people.columns)
# 显示文件内容 默认五行也可以指定行数
print(people.head(3))
# 显示末尾内容 默认五行也可以指定行数
print(people.tail(3))