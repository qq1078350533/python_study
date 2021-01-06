  if (Java.available) {
            Java.perform(function () {
                // 这是包名（文件名）
                var class_u = Java.use('pp');
                // 定位到方法  function(paraml)括号里是这个方法的参数
                class_u.a.overload('java.lang.String', 'java.lang.String').implementation = function (b,c) {
                    //控制台打印消息
                    send("got it c");
                    send(b);
                    send(c);
                    // 给方法运行成功后返回的值
                    var result = this.c(b,c);
                    send(result);
                    return result;
                };
            });
        }


        [1234567890]