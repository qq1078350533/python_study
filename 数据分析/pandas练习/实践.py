import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams['font.sans-serif'] = ['Microsoft YaHei']
students = pd.read_excel('lianjia.xlsx')
#从大到小排序ascending=False，不加则是默认从小到大
students.sort_values(by='房价',inplace=True,ascending=False)
# 制定x,y轴 和颜色
students.plot.bar(x='所在区域',y='房价',color='orange',title='房价分析')
# 紧凑数据
plt.tight_layout()
plt.savefig('abc.png')
plt.show()
