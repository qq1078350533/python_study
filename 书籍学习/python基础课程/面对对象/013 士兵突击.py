class gun:
    def __init__(self,model):
        #枪的型号
        self.model = model
        #子弹的数量
        self. bullet_count = 0
    #填装子弹
    def add_bulle(self,count):
        self.bullet_count += count

    def shoot(self):
        #判断子弹数量
        if self.bullet_count <= 0:
            print("{}没有子弹了".format(self.model))
            return
        #发射子弹
        self.bullet_count -= 1
        #提示发射信息
        print("{}突突突。。。{}".format(self.model,self.bullet_count))


class Soldir:
    def __init__(self,name):
        self.name = name
        #新兵没枪
        self.gun = None

    def fire(self):
        #判断士兵是否有枪
        if self.gun is None:
            print("{}还没有枪".format(self.name))
            return
        #高喊口号
        print("冲啊[{}]".format(self.name))
        #让枪装填子弹
        self.gun.add_bulle(50)
        #让枪发射子弹
        self.gun.shoot()
#创建枪对象
ak47 = gun("AK47")

#创建许三多
xusanduo = Soldir("xusanduo")
xusanduo.gun = ak47
xusanduo.fire()
print(xusanduo.gun)