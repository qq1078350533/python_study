Java.perform(function () {
    var comma = Java.use('com.meituan.robust.PatchProxy');
     comma.proxy.overload('[Ljava.lang.Object;', 'java.lang.Object', 'com.meituan.robust.ChangeQuickRedirect', 'boolean', 'int', '[Ljava.lang.Class;', 'java.lang.Class').implementation=function (a1,a2,a3,a4,a5,a6,a7) {
        var res = this.proxy(a1,a2,a3,a4,a5,a6,a7);
        console.log(a1)
        console.log(a2)
        console.log(a3)
        console.log(a4)
        console.log(a5)
        console.log(a6)
        console.log(a7)
        console.log(res)
        return res;
    }
})