# 7-8 熟熟食食店店 ：创建一个名为sandwich_orders 的列表，在其中包含各种三明治的名字；再创建一个名为finished_sandwiches 的空列表。遍历列 表sandwich_orders ，对于其中的每种三明治，都打印一条消息，如I made your tuna sandwich ，并将其移到列表finished_sandwiches 。所有三明治都制作好后，打印一条消息，将这些三明治列出来。
# sandwich_orders = ['deng','hui','snack','good']
# finished_sandwiches =[]
# while sandwich_orders:
#     a = sandwich_orders.pop()
#     print("I made your tuna sandwich {}".format(a))
#     finished_sandwiches.append(a)
# print(finished_sandwiches)

# 7-9 五五香香烟烟熏熏牛牛肉肉（（pastrami））卖卖完完了了 ：使用为完成练习7-8而创建的列表sandwich_orders ，并确保'pastrami' 在其中至少出现了三次。在程序开头附近添加 这样的代码：打印一条消息，指出熟食店的五香烟熏牛肉卖完了；再使用一个while 循环将列表sandwich_orders 中的'pastrami' 都删除。确认最终的列 表finished_sandwiches 中不包含'pastrami' 。
# sandwich_orders = ['pastrami','hui','snack','pastrami','pastrami','deng']
# print("牛肉卖完了")
# while "pastrami" in sandwich_orders:
#     sandwich_orders.remove('pastrami')
# print(sandwich_orders)

# 7-10 梦梦想想的的度度假假胜胜地地 ：编写一个程序，调查用户梦想的度假胜地。使用类似于“If you could visit one placein the world, where would you go?”的提示，并编写一个打印调查 结果的代码块。
result = {}
b = True
while b:
    name = input("what,s your name?")
    a = input("If you could visit one placein the world, where would you go? ")
    result[name] = a

    if a == 'quit':
        b = False
print(result)