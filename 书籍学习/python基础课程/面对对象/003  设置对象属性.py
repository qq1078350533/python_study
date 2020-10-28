class Cat:
    def eat(self):
        print("{0}爱吃鱼".format(self.name))
    def drink(self):
        print("{0}要喝水".format(self.name))


tom = Cat()
tom.name = "Tom"
tom.drink()
tom.eat()
print(tom)


lazy_cat = Cat()
lazy_cat.name = "懒猫"
lazy_cat.eat()
lazy_cat.drink()
print(lazy_cat)