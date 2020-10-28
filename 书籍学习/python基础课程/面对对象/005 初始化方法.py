class Cat:
    def __init__(self):
        print("这是一个初始化方法")
        self.name = "Tom"
    def eat(self):
        print("{0}爱吃鱼".format(self.name))
tom = Cat()
print(tom.name)
tom.eat()