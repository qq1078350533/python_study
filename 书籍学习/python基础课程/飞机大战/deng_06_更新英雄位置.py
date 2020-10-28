import pygame
from plane_sprites import *
pygame.init()

# 创建游戏的窗口 480*700
scren = pygame.display.set_mode((480, 700))

# 绘制背景图像
# 1>加载图像数据
bg = pygame.image.load("d:\\Users\\娟娟爱吃屁屁\\Desktop\\python练习题\\飞机大战\\images\\background.png")
# 2》blit  绘制图像
scren.blit(bg, (0, 0))
# 3》update 更新屏幕显示
# pygame.display.update()

# 绘制英雄的飞机
hero = pygame.image.load("d:\\Users\\娟娟爱吃屁屁\\Desktop\\python练习题\\飞机大战\\images\\me1.png")
scren.blit(hero, (150, 300))
pygame.display.update()

# 创建时钟对象
clock = pygame.time.Clock()

#1.定义rect位置的初始位置
hero_rect = pygame.Rect(150,300,102,126)

#创建敌机精灵
enemy = GameSprite("d:\\Users\\娟娟爱吃屁屁\\Desktop\\python练习题\\飞机大战\\images\\enemy1.png")
enemy1 = GameSprite("d:\\Users\\娟娟爱吃屁屁\\Desktop\\python练习题\\飞机大战\\images\\enemy1.png",2)
#创建敌机的精灵组
enemy_group = pygame.sprite.Group(enemy,enemy1)

# 游戏循环  意味着游戏正式开始
while True:
    # 可以指定循环内部执行的频率
    clock.tick(60)
    #监听事件
    for event in pygame.event.get():
        #判断事件是否退出
        if event.type == pygame.QUIT:
            print("游戏退出。。。")
            #卸载所有模块
            pygame.quit()
            #退出系统
            exit()
    #2.修改飞机的位置
    hero_rect.y -= 1
    #判断飞机的位置
    if hero_rect.y <= 0:
        hero_rect.y = 700
    #3.调用blit方法绘制图像
    scren.blit(bg,(0,0))
    scren.blit(hero,hero_rect)

    #让精灵组调用两个方法
    #update让组中的所有精灵更新位置
    enemy_group.update()
    #draw
    enemy_group.draw(scren)
    #4.调用update方法更新显示
    pygame.display.update()
pygame.quit()