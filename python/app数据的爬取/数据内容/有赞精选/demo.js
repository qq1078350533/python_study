   //hook重载方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('com.qima.mars.medium.http.a');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.b.overload('java.lang.String').implementation=function(paraml){
                //控制台打印消息
            send("got it c");
            send(paraml);
            // 给方法运行成功后返回的值
            var result = this.b(paraml);
            send(result);
            return result;
            };
        });
    }