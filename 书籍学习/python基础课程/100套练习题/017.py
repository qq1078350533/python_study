import string
s = input("请输入：")
english = 0
kongge = 0
number = 0
other = 0
for c in s:
    if c.isalpha():
        english += 1
    elif c.isspace():
        kongge += 1
    elif c.isdigit():
        number += 1
    else:
        other += 1
print("英文有 %d，空格有 %d，数字有 %d，其他有 %d" % (english,kongge,number,other))