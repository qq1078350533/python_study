# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/06/11
"""

from pyquery import PyQuery as pq
html = ""
doc = pq(html)

# 基于css选择器的用法
items = doc('.list')
# 选择class为list标签下的所以子孙节点为li标签的内容
lis = items.find('li')
# 选择class为list标签下的所以子节点的内容
lis = items.children()
# 用parent方法获取某个节点的父节点
lis = items.parent()
# 要获取兄弟节点可以使用siblings方法
lis = items.siblings()
# 如果只有一个结果返回可以直接输出   如果有多个既需要遍历
for li in lis.items():
    print(li)
# 获取结果中的属性，只会返回第一个
attr = lis.attr('href')
# 如果需要多个既需要遍历
for li in lis.items():
    attr = li.attr('href')
# 获取结果中的文本
text = lis.text()
# 如果需要获取这个节点内部的HTML文本 就要用html方法 只会返回第一个
html = lis.html()

# 节点操作
# 移除class属性值
li.remove_class('active')
li.remove_attr
# 增加class属性值
li.add_class('active')
li.attr('name', 'link')
li.html('<a ..../a>')
li.text('change item')
