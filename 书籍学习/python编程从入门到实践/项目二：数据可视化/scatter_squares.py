import matplotlib.pyplot as plt

x_values = list(range(1,1001))
y_values = [x**2 for x in x_values]
# edgecolors="none"(删除数据点的轮廓);c 自定义颜色'red';cmap 可能用较浅的颜色来显示较小的值，并使用较深 的颜色来显示较大的值
plt.scatter(x_values, y_values, c=y_values, cmap=plt.cm.Blues, s=40, edgecolors="none")

# 设置图表标题并给坐标轴指定标签
plt.title("Squre Numbers")
plt.xlabel("Value",fontdict={'family': 'Times New Roman', 'size': 14})
plt.ylabel("Squrae of Value",fontdict={'family': 'Times New Roman', 'size': 14})

# 设置刻度标记的大小labelsize:刻度值字体大小
plt.tick_params(axis="both",which="major",labelsize=14)

# 设置每个坐标轴的取值范围
plt.axis([0,1100,0,1100000])

# 保存图标 bbox_inches="tight"指定将图表多余的空白区域裁剪掉。如果要保留图表周围多余的空 白区域，可省略这个实参。
plt.savefig('squares_plot.png', bbox_inches="tight")

# 表格的展示
plt.show()

