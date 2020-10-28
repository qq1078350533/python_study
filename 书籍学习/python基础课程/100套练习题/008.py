
i = 1
while i <= 9:
    j = 1
    while j <= i:
        result = i * j
        print("%d * %d = %d" % (i, j, result), end="\t")
        j += 1

    print("")
    i += 1


for i in range(10):
    for j in range(10):
        result = i * j
        print("%d * %d = %d" % (i, j, result))
    print("")
