# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/07/14
"""
import frida, sys



jscode = """
if(Java.available) {
    Java.perform(function () {
        // 这是包名（文件名）
        var class_u = Java.use('l.q.a.y.p.m');
        // 定位到方法  function(paraml)括号里是这个方法的参数
        class_u.c.implementation=function(paraml){
            //控制台打印消息
        send("got it c");
        send(paraml);
        // 给方法运行成功后返回的值
        var result = this.c(paraml);
        send(result);
        return result;
        };
    });
}   //需要通过frida执行的js代码
"""

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

def main():
    process = frida.get_remote_device().attach('com.gotokeep.keep')
    script = process.create_script(jscode)  # 用于attach到目标进程
    script.on('message', on_message)
    script.load()
    sys.stdin.read()


if __name__ == '__main__':
    main()
