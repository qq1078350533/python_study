tn = 0
sn = []
n = int(input("n= "))
a = int(input("a= "))
for count in range(n):
    tn = tn + a
    a = a*10
    sn.append(tn)
    print(tn)
sn = reduce(lambda x,y: x+y,sn)