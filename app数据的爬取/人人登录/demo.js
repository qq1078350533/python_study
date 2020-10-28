if(Java.available) {
    Java.perform(function () {
        // 这是包名（文件名）
        var class_u = Java.use('com.renren.mobile.android.service.ServiceProvider');
        // 定位到方法  function(paraml)括号里是这个方法的参数
        class_u.a.overload('java.lang.String', 'java.lang.String', 'int', 'java.lang.String', 'java.lang.String', 'android.content.Context', 'com.renren.mobile.android.loginfree.LoginStatusListener').implementation=function(a1,a2,a3,a4,a5,a6,a7){
        send("got it c");
        send(a1);
        send(a2);
        send(a3);
        send(a4);
        send(a5);
        send(a6);
        send(a7);
        };
    });
}