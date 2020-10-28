


while True:
    i = int(input("请输入您的工资： "))
    bonus1 = i * 0.1
    bonus2 = bonus1 + (i - 100000) * 0.075
    bonus3 = bonus2 + (i - 200000) * 0.005
    bonus4 = bonus3 + (i - 400000) * 0.003
    bonus5 = bonus4 + (i - 600000) * 0.015
    bonus6 = bonus5 + (i - 1000000) * 0.01
    if i <= 100000:
        bonus = bonus1
        print("你的奖金是：%d " % bonus)
    elif i <= 200000:
        bonus = bonus2
        print("你的奖金是：%d " % bonus)
    elif i <= 400000:
        bonus = bonus3
        print("你的奖金是：%d " % bonus)
    elif i <= 600000:
        bonus = bonus4
        print("你的奖金是：%d " % bonus)
    elif i <= 1000000:
        bonus = bonus5
        print("你的奖金是：%d " % bonus)
    else:
        bonus = bonus6
        print("你的奖金是：%d " % bonus)

