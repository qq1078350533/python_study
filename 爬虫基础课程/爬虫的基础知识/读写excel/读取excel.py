import xlrd


# 打开Excel文件读取数据
data = xlrd.open_workbook('蔡徐坤篮球.xlsx')

sheet_name = data.sheet_names()  # 获取所有sheet名称
print(sheet_name)  # ['蔡徐坤篮球']

# 根据下标获取sheet名称 索引从0开始
sheet1_name = data.sheet_names()[0]
print(sheet1_name)  # 蔡徐坤篮球

# 根据sheet索引获取sheet内容，同时获取sheet名称、列数、行数
sheet1 = data.sheet_by_index(0)
print('sheet1名称:{}\nsheet1列数: {}\nsheet1行数: {}'.format(sheet1.name, sheet1.ncols, sheet1.nrows))
# sheet1名称:蔡徐坤篮球
# sheet1列数: 6
# sheet1行数: 1001

# 根据sheet名称获取sheet内容，同时获取sheet名称、列数、行数
sheet1 = data.sheet_by_name('蔡徐坤篮球')
print('sheet1名称:{}\nsheet1列数: {}\nsheet1行数: {}'.format(sheet1.name, sheet1.ncols, sheet1.nrows))

# sheet1名称:蔡徐坤篮球
# sheet1列数: 6
# sheet1行数: 1001

#  根据sheet名称获取整行和整列的值 索引从0开始
sheet1 = data.sheet_by_name('蔡徐坤篮球')
print(sheet1.row_values(0))
# ['名称', '地址', '描述', '观看次数', '弹幕数', '发布时间']
print(sheet1.col_values(0))
# 第一列内容

# 获取指定单元格的内容
print(sheet1.cell(1,0).value)  # 蔡徐坤打篮球原视频
print(sheet1.cell_value(1,0))  # 蔡徐坤打篮球原视频
print(sheet1.row(1)[0].value)  # 蔡徐坤打篮球原视频

# 获取单元格内容的数据类型  （此处是因为保存的时候就是string类型）
print(sheet1.cell(1,0).ctype)  # 第2 行1列内容 ：蔡徐坤打篮球原视频 为string类型
print(sheet1.cell(3,5).ctype)  # 第4行6列内容：2019-03-29 为string类型
print(sheet1.cell(3,4).ctype)  # 第4 行5列内容：   6806 为string类型
# 说明：ctype : 0 empty,1 string, 2 number, 3 date, 4 boolean, 5 error

# 获取单元内容为日期类型的方式
# 使用xlrd的xldate_as_tuple处理为date格式
from datetime import datetime, date
if sheet1.cell(3, 6).ctype == 3:
    print(sheet1.cell(3, 6).value)
    date_value = xlrd.xldate_as_tuple(sheet1.cell(3, 6).value, data.datemode)
    print(date_value)
    print(date(*date_value[:3]))
    print(date(*date_value[:3]).strftime('%Y/%m/%d'))

# 获取单元内容为number的方式（转为整型）
if sheet1.cell(3, 5).ctype == 2:
    print(sheet1.cell(3, 5).value)
    num_value = int(sheet1.cell(3, 5).value)
    print(num_value)