Java.perform(function () {
    var comma = Java.use('com.ninetyfive.commonnf.c.b.a');
    comma.a.overload('java.lang.String').implementation=function (a1) {
        var res = this.a(a1);
        console.log(a1);
        console.log(res);
        return res;
    }
})