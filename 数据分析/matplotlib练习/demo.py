from matplotlib import pyplot as plt

x = range(2,26,2)
y = [15,13,14.5,17,20,25,26,26,27,22,18,15]
print(len(x))
print(len(y))
# 设置图片大小
plt.figure(figsize=(20,8),dpi=80)

# 绘图
plt.plot(x,y)

# 设置x轴的刻度
xtick = [i+0.5 for i in range(2,24)]
print(xtick)
plt.xticks(xtick)
plt.yticks(range(min(y),max(y)+1))

# 保存
# plt.savefig('./t1.png')

# 展示图形
plt.show()