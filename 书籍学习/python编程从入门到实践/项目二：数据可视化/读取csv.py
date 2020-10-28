import csv
filename = "sitka_weather_07-2018_simple.csv"
with open(filename) as f:
    reader = csv.reader(f)
    header_row = next(reader)
    highs = []
    # 以列表的形式循环csv文件的每一行
    for row in reader:
        # 可以专门取某一列的数据row【0】
        high = int(row[5])
        highs.append(high)
    print(highs)