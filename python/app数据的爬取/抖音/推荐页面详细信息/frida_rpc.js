var result = null;
function callDYFun(url) { //定义导出函数
    Java.perform(function () {
        var ttinstance = Java.use("com.ss.sys.ces.gg.tt$1").$new();
        var strclass = Java.use("java.lang.String");
        var jsonbj = Java.use("org.json.JSONObject")
        var map = Java.use('java.util.HashMap').$new();
        var res = ttinstance.a(url, map);
        console.log(strclass.valueOf(res));
        result = jsonbj.$new(res).toString();
    })
    return result;
}
rpc.exports = {
    callsecretfunctionedy: callDYFun,
};

 //
 // //hook重载方法
 //    if(Java.available) {
 //        Java.perform(function () {
 //            // 这是包名（文件名）
 //            var class_u = Java.use('com.ss.android.common.applog.k');
 //            // 定位到方法  function(paraml)括号里是这个方法的参数
 //            class_u.a.overload("java.lang.String").implementation=function(paraml){
 //                //控制台打印消息
 //            send("got it c");
 //            send(paraml);
 //            // 给方法运行成功后返回的值
 //            var result = this.a(paraml);
 //            // send(result);
 //            return result;
 //            };
 //        });
 //    }

//hook重载方法
//     if(Java.available) {
//         Java.perform(function () {
//             // 这是包名（文件名）
//             var class_u = Java.use('com.ss.android.common.applog.k');
//             // 定位到方法  function(paraml)括号里是这个方法的参数
//             class_u.a.overload("java.lang.String").implementation=function(paraml){
//                 //控制台打印消息
//             send("got it a");
//             console.log(paraml);
//             // 给方法运行成功后返回的值
//             var result = this.a(paraml);
//             // send(result);
//             return result;
//             };
//         });
//     }


// 下面的为hook测试
// Java.perform(function () {
//     var comma = Java.use('com.ss.sys.ces.gg.tt');
//     comma.d.implementation=function (a1) {
//         var res = this.d(a1);
//         console.log("download_sdk_info参数是"+a1);
//         console.log("download_sdk_info返回的结果是"+ res);
//     }
// })
// //
//
// Java.perform(function () {
//     var comma = Java.use('com.ss.a.b.d');
//     comma.c.implementation=function (a1) {
//         var res = this.c(a1);
//         console.log("c参数是"+a1);
//         console.log("c返回的结果是"+ res);
//     }
// })

//
// Java.perform(function () {
//     var ttinstance = Java.use("com/ss/sys/ces/gg/tt$1").$new();
//     var url = 'https://aweme-eagle.snssdk.com/aweme/v1/feed/?type=0&max_cursor=0&min_cursor=0&count=6&volume=0.6666666666666666&pull_type=1&need_relieve_aweme=0&filter_warn=0&ts=1601099273&app_type=lite&os_api=22&device_type=Nexus%206&device_platform=android&ssmix=a&iid=2145863881731687&manifest_version_code=180&dpi=560&uuid=359320051140506&version_code=180&app_name=aweme&version_name=1.8.0&openudid=80c0065ee0be4cb&device_id=1952348995336375&resolution=1440*2392&os_version=5.1&language=zh&device_brand=google&ac=wifi&update_version_code=1800&aid=1128&channel=sem_shenma_dy_and19&_rticket=1601099274165&as=aa9e1985d85f6ed60a9e19&cp=86289e1985d89e19862034&mas=01599323199323a3b399a3b9b9c549546fa3b399a3b93353199953'
//     var map = Java.use('java.util.HashMap').$new()
//     var res = ttinstance.a(url, map);
//     console.log(res)
// })