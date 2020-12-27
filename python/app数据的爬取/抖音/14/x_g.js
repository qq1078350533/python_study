// hook重载方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var ttinstance = Java.use("com.ss.sys.ces.gg.tt$1").$new();
            // 定位到方法  function(paraml)括号里是这个方法的参数
            ttinstance.a.overload('java.lang.String', 'java.util.Map').implementation =function(a,b){
                //控制台打印消息
            send("got it a");
            send(a);
            send(b);
            // 给方法运行成功后返回的值
            var result = ttinstance.a(a,b);
            send(result);
            return result;
            };
        });
    }