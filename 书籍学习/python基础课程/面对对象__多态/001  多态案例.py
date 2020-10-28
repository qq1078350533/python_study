class Dog(object):
    def __init__(self,name):
        self.name = name

    def game(self):
        print("{}蹦蹦跳跳的玩耍。。。".format(self.name))

class XiaoTianGog(Dog):
    def game(self):
        print("{}飞到天上去玩耍".format(self.name))


class Person(object):
    def __init__(self,name):
        self.name = name

    def game_with_dog(self,dog):
        print("{}和{}快乐的玩耍".format(self.name,dog.name))

        #让狗玩耍
        dog.game()

# wangcai = Dog("旺财")
wangcai = XiaoTianGog("哮天犬")
xiaoming = Person("小明")
xiaoming.game_with_dog(wangcai)