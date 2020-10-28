def sun(num):
    print(num,end="\t")
    if num == -12:
        return

    sun(num - 1)
    print("完成{0}".format(num))

sun(3)