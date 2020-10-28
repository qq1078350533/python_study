class Tool(object):
    number = 0

    def __init__(self,name):
        self.name = name

        Tool.number += 1

tool1 = Tool("斧头")
tool2 = Tool("榔头")
tool3 = Tool("剪刀")
print("工具总数为{}".format(Tool.number))

