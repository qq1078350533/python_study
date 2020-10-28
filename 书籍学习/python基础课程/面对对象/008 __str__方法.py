class Cat:
    def __init__(self,new_name):
        self.name = new_name
        print("{0}来了".format(self.name))

    def __del__(self):
        print("{0}我去了".format(self.name))

    def __str__(self):
        return "我是小猫[{0}]".format(self.name)

tom = Cat("tom")
print(tom)