Java.perform(function () {
        //hook app_sign参数
    //     var comma = Java.use('cn.etouch.ecalendar.manager.y');
    // comma.d.overload('[B').implementation=function (a) {
    //     var res = this.d(a);
    //     console.log(JSON.stringify(a))
    //     console.log(JSON.stringify(res));
    //     return res;
    // }

    //hook x
    var comma = Java.use('cn.etouch.ecalendar.common.libs.DES');
    comma.$init.implementation=function (b) {
        var res = this.$init(b);
        console.log(b)
        // console.log(res);
        return res;

    }
})
//11ad57f3874e2ac7f7e5cdbf39ffc91e9f06ad6490d7370db01c5a59ba66df4d7dee00d37119509a06ca3d28163f703b6547059781c1a68247807e0360da611aa97235518906d7ed9e8d2d122173abd07d1aadc73d671dcc76bc350d6bef0f0ce877a54db76b689b4e66c11f5e719a66d4999c41c3822364b12d2b7c47883049
//11ad57f3874e2ac7f7e5cdbf39ffc91e9f06ad6490d7370db01c5a59ba66df4d7dee00d37119509a06ca3d28163f703b6547059781c1a68247807e0360da611aa97235518906d7ed9e8d2d122173abd07d1aadc73d671dcc76bc350d6bef0f0ce877a54db76b689b4e66c11f5e719a66d4999c41c3822364b12d2b7c47883049
//11ad57f3874e2ac7f7e5cdbf39ffc91e9f06ad6490d7370db01c5a59ba66df4d7dee00d37119509a06ca3d28163f703b6547059781c1a68247807e0360da611aa97235518906d7ed9e8d2d122173abd07d1aadc73d671dcc76bc350d6bef0f0ce877a54db76b689b4e66c11f5e719a66d4999c41c3822364b12d2b7c47883049