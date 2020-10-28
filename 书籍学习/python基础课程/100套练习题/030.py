x = int(input("输入你的数字："))
a = x//10000
b = x%10000//1000
c = x%1000//100
d = x%100//10
e = x%10
if a == e and b == d:
    print("他是回文数！")
else:
    print("他不是回文数！")
