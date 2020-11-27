Java.perform(function () {
    var comma = Java.use('com.dodonew.online.http.RequestUtil');
    comma.encodeDesMap.overload('java.lang.String', 'java.lang.String', 'java.lang.String').implementation=function (a,b,c) {
        console.log("a " +a);
        console.log("b " +b);
        console.log("c " +c);
        var des = this.encodeDesMap(a,b,c)
        console.log(des)
    }
})
