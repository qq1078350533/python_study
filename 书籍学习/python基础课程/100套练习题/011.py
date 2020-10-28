f1 = 1
f2 = 1
for i in range(1,21):
    print("%12d\n%12d\t" %(f1,f2))
    #每次输出2行，一行2个数，即每四个数一个阶段，
    if(i % 2)== 0:
        print("")
    f1 = f1 + f2
    f2 = f1+ f2