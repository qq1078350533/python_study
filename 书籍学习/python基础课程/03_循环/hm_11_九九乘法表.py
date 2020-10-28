row = 1
while row <= 9:
    col = 1
    while col <= row:
        print("%d * %d = %d" % (col,row,col*row),end="\t")
        col += 1
    print("")
    row += 1





for i in range(1,10):
    for j in range(1,i+1):
        print('{}*{}={}'.format(i,j,i*j),end='\t')
    print("\n")
# print('\n'.join(['\t'.join(["%2s*%2s=%2s"%(j,i,i*j) for j in range(1,i+1)]) for i in range(1,10)]))