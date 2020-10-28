
a = 2
b = 1
s = 0
for n in range(1,21):
    s = s + a/b
    b = a
    a = a + b

print(s)

