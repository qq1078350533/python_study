class Women:
    def __init__(self,name):
        self.name = name
        self.__age = 18


    def __secret(self):
      #在对象的方法内部是可以访问对象的私有属性的
        print("{}的年龄是{}".format(self.name,self.__age))


xiaofang = Women("小芳")

print(xiaofang._Women__age)
xiaofang._Women__secret()