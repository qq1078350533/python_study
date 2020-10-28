from collections import Tterable


class Classmate(object):
    def __init__(self):
        self.names = list()

    def add(self,name):
        self.names.append(name)

    def __iter__(self):
        """如果需要一个对象称为一个可以迭代的对象，即可以使用for，那么必须实现__iter__方法"""
        return ClassIteraor()


class ClassIteraor(object):
    def __iter__(self):
        pass

    def __next__(self):
        pass


classmate = Classmate()

classmate.add("张三")
classmate.add("王二")
classmate.add("老王")

print("判断classmate是否是可以迭代的对象：",isinstance(classmate,Tterable))

iter(classmate)
# for names in classmate:
#     print(names)