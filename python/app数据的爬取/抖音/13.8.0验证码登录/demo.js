 //hook重载方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('com.bytedance.common.utility');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.encryptWithXor.overload("").implementation=function(paraml){
                //控制台打印消息
            send("got it c");
            send(paraml);
            // 给方法运行成功后返回的值
            var result = this.c(paraml);
            send(result);
            return result;
            };
        });
    }