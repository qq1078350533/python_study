package com.snackdeng;

import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;

import java.util.Random;

/*
    Random:用于产生随机数

    使用步骤：
        A:导包
            import java.util.Random;
        B:创建对象
            Random r = new Random();
        C:获取随机数
            int Random = r.nextInt(10);
            获取数据的范围：[0，10]
* */
public class RandomDemo {
    public static void main(String[] args) {
        Random r = new Random();
        for (int i=1; i<=10; i++) {
            int a = r.nextInt(100);
            System.out.println(a);
        }

    }


}
