//hook java层
    //hook普通方法
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
    }

    //hook构造方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('l.q.a.y.p.m');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.$init.implementation=function(paraml){
                //控制台打印消息
            send("got it c");
            send(paraml);
            // 给方法运行成功后返回的值
            var result = this.$init(paraml);
            send(result);
            return result;
            };
        });//hook重载方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('l.q.a.y.p.m');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.c.overload("").implementation=function(paraml){
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
    }



    //hook构造对象参数
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('l.q.a.y.p.m');
            var a = Java.use('l.q.a.y');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.test.overload("l.q.a.y").implementation=function(obj){
                var mon = a.$new("");
                send(mon.getInfo());
                return this.test(mon);
            };
        });
    }

    //hook修改对象属性
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('l.q.a.y.p.m');
            var a = Java.use('l.q.a.y');
            var clazz = Java.use('Java.lang.Class');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.test.overload("").implementation=function(paraml){
                var mon = a.$new();
                send(mon.getInfo());
                var numid = Java.cast(mon.getClass(),clazz).getDeclaredField("num")
                numid.setAccessible(true);
                numid.setInt(mon, 1000);
                send(mon.getInfo());
                return this.test();
            };
        });
    }



//hook native层
        //基址
        var sha1InputAddr = soAddr.add(0x1744 + 1);
        var resultPtr="";
if(Java.available) {
    Java.perform(function(){
        // 加载的so文件
        var soAddr = Module.findBaseAddress("libtre.so");
        send('soAddr: ' + soAddr);
        send('sha1InputAddr: ' + sha1InputAddr);
        Interceptor.attach(sha1InputAddr, {
            onEnter: function(args){
                // var buffer = Memory.readByteArray(args[1], 1000);
                // console.log("明文",buffer);
                send(args[1]);
            },
            onLeavec: function (retval) {
                console.log(retval);
            }
        });
    });
}
