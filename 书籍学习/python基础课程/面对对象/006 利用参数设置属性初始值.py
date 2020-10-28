class Cat:
    def __init__(self,new_name):
        print("这是一个初始化方法")
        # self.name = "Tom"
        self.name = new_name

    def eat(self):
        print("{0}爱吃鱼".format(self.name))
tom = Cat("Tom")
tom.eat()
print(tom.name)



lazy_cat = Cat("大懒猫")
lazy_cat.eat()
print(lazy_cat.name)