import matplotlib.pyplot as plt
import matplotlib

input_values = [1,2,3,4,5]
squares = [1,4,9,16,25]
plt.plot(input_values,squares,linewidth=5)

# windows和 linux设置字体的方式
matplotlib.rc('font',family='MicroSoft YaHei',weight='bold')

# 设置图表标题，并给坐标轴加上标签
plt.title("Square Numbers")
plt.xlabel("Value")
plt.ylabel("Square of Value")

#设置刻度标记的大小
plt.tick_params(axis="both",labelsize=14)

plt.show()