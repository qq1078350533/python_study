# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/07/08
"""
import keyring
from imbox import Imbox

password = keyring.get_password('yagmail','snackdeng@163.com')
print(password)
with Imbox('imap.163.com', 'snackdeng@163.com','DINODMVPZVSBPYKA', ssl=True) as imbox:
    all_index_messages = imbox.messages()
    # imbox.messages(unread=True)  未读邮件
    # imbox.messages(flagged=True)  红旗邮件
    # imbox.messages(send_to='snackdeng@163.com')  某收件人邮件
    for uid, message in all_index_messages:
        # imbox.mark_seen(uid)  标记已读
        # imbox.delete(uid)  删除邮件
        print(message.subject)
        print(message.body['plain'])

        # message.sent_from 收件人
        # message.sent_to   发件人
        # message.subject   主题
        # message.date      时间
        # message.body['plain'] 文本格式内容
        # message.body['html'] HTML格式内容
        # message.attachments 附件