from matplotlib import pyplot as plt
import matplotlib

# 设置字体
matplotlib.rc('font',family='MicroSoft YaHei',weight='bold')

y1 = [1,2,1,1,1,2,4,4,4,5,6,5,3,2,1,2,3,4,1,2]
y2 = [1,2,3,4,2,1,3,4,5,6,2,3,1,2,3,4,2,1,1,2]
x = range(11,31)

# 图片大小
plt.figure(figsize=(20,8),dpi=80)

#参数为线条内容，线条颜色也可以百度16进制（红色r,绿色g，蓝色b，白色w，青色c，洋红m，黄色y，黑色k），线条样式（实线-，虚线破折线--，点划线-.，点虚线，虚线:），线条粗细
plt.plot(x,y1,label="自己",color="#DB7093",linestyle=":",linewidth=1)
plt.plot(x,y2,label="同桌",color="cyan",linestyle="--")

#x轴的刻度
xtick = ["{}岁".format(i) for i in x]
plt.xticks(x,xtick)
plt.yticks(range(0,9))

# 绘制网格线
plt.grid(alpha=0.4,linestyle="--")

#添加图例 参数是显示在什么位置（左上角）
plt.legend(loc="upper left")

# 展示图片
plt.show()