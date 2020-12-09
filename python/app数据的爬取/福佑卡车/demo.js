//hook重载方法
//     if(Java.available) {
//         Java.perform(function () {
//             // 这是包名（文件名）
//             var class_u = Java.use('com/amap/api/services/a/bj');  // 这里填包名
//             // 定位到方法  function(paraml)括号里是这个方法的参数 overload('参数类型')  a 方法名
//             class_u.a.overload('android.content.Context', 'java.lang.String', 'java.lang.String').implementation=function(a,b,c){
//                 //控制台打印消息
//             send("got it c");
//             send(a);
//             send(b);  //打印参数
//             send(c);
//             // 给方法运行成功后返回的值
//             var result = this.a(a,b,c);
//             send(result); //打印结果
//             return result;
//             };
//         });
//     }
//     hook重载方法
    if(Java.available) {
        Java.perform(function () {
            // 这是包名（文件名）
            var class_u = Java.use('com/amap/api/services/a/bo');
            // 定位到方法  function(paraml)括号里是这个方法的参数
            class_u.a.overload( 'java.lang.String').implementation=function(b){
                //控制台打印消息
            console.log(b)
            // 给方法运行成功后返回的值
            var result = this.a(b);
            console.log(result);
            return result;
            };
        });
    }