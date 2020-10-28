from matplotlib import pyplot as plt
import random
import matplotlib

# windows和 linux设置字体的方式
matplotlib.rc('font',family='MicroSoft YaHei',weight='bold')

x = range(0,120)
# 设置120个在20，34之间的随机数
y = [random.randint(20,35) for i in range(120)]

plt.figure(figsize=(20,8),dpi=80)

plt.plot(x,y)

# 设置x轴的刻度 刻度必须与文字一一对应即个数一致
_xtick = ["10点{}分".format(i) for i in range(60)]
_xtick += ["11点{}分".format(i) for i in range(60)]
plt.xticks(list(x)[::3],_xtick[::3],rotation=45) # rotation文字旋转的度数为90

# 添加描述信息
plt.xlabel("时间")
plt.ylabel("温度 单位(℃")
plt.title("10点到12点每分钟的气温变化情况")
plt.show()