class HouseItem:
    def __init__(self,name,area):
        self.name = name
        self.area = area

    def __str__(self):
        return "[{0}] 占地{1:.2f}".format(self.name,self.area)

bed = HouseItem("席梦思",4)
chest = HouseItem("衣柜",2)
table = HouseItem("餐桌",1.5)

print(bed)
print(chest)
print(table)