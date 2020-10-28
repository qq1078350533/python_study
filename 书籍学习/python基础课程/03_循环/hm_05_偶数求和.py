result = 0
i = 0
while i <= 100:
    if i % 2 == 0:
        print(i)
        result += i
    i += 1
print("0——100的偶数之和的结果是 ： %d" % result)