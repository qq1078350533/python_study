# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/07/08
"""
import yagmail

yag = yagmail.SMTP(user='snackdeng@163.com', host='smtp.163.com')
contents = ['dasdasd',
            'asdadasda']

# 收件人  主题  内容
yag.send('snackdeng@163.com', '这是一封邮件', contents)