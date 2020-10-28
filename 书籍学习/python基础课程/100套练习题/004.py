year = int(input("year:\n"))
month = int(input("month:\n"))
day = int(input("day：\n"))
months = (0,31,59,90,120,151,181,212,243,273,304,334)
if 0 <= month <= 12:
    sum = months[month - 1]
else:
    print("月份输入错误")
sum += day
if (year % 4 == 0):
    num = 1
if (num == 1) and (month > 2):
    sum += 1
print("这是这一年的第 %d 天" % sum)