for n in range(100,1001):
    i = n // 100
    j = n // 10 % 10
    k = n % 10
    if i * 100 + j * 10 + k ==i**3 + j**3 + k**3:
        print("%-5d" % n)