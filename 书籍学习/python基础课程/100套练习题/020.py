sn = 100
hn = sn/2
n = int(input("第几次： " ))
for i in range(1,n):
    sn += 2*hn
    hn /= 2
print("共经过 %d 米" % sn)
print("第 %d 次反弹 %d 米" % (n,hn))