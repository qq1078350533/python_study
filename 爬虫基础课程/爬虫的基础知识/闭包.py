def func():
    a = 1
    b = 2
    return a + b

def sum(a):
    def add(b):
        return a + b
    return add

num1 = func()
num2 = sum(2)
print(num1)
print(num2)
print(type(num1))
print(type(num2))

