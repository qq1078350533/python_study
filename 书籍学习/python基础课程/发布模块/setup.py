from distutils.core import setup

setup(name="deng_message",   #包名
      version="1.0",   #版本
      description="itheima's 发送和接收消息模块",   #描述信息
      long_description="完整的发送和接收信息模块",  #完整描述信息
      author="snackdeng",  #作者
      author_email="snackdeng@snackdeng.com",   #作者邮箱
      url="www.snackdeng.com",    #作者
      py_modules=["deng_message.send_message",
                  "deng_message.receive_message"])