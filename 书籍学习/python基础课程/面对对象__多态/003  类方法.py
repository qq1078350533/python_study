class Tool(object):
    number = 0
    @classmethod
    def show_tool_number(cls):
        print("工具对象的数量{}".format(cls.number))

    def __init__(self,name):
        self.name = name

        Tool.number += 1

tool1 = Tool("斧头")
tool2 = Tool("榔头")
Tool.show_tool_number()
