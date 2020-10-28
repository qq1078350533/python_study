has_ticket = True
knife_length = int(input("刀的长度："))
if has_ticket :
    print("车票检查通过，准备安检")
    if knife_length <= 20 :
        print("安检通过，允许上车")
    else:
        print("不允许上车")
else:
    print("请先买票")