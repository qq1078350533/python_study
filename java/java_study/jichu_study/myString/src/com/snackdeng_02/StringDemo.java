package com.snackdeng_02;

import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;

/*
    String字符串类
        由多个字符串组成的一串数据

    构造方法
        String(String original) 把字符串封装成字符串对象
        String(char[] value)    把字符数组封装成字符串对象
        String(char[] value, int offset, int count)  把字符数组中的一部分数据封装成字符串对象

    注意：字符串是一种特殊的引用数据类型，直接输出字符串对象是该对象的数据
 */
public class StringDemo {
    public static void main(String[] args) {
        //方式1
        //String(String original) 把字符串封装成字符串对象
        String s1 = new String("hello world");
        System.out.println(s1);

        //方式2
        //String(char[] value)    把字符数组封装成字符串对象
        char[] chs = {'h','e','l','l'};
        String s2 = new String(chs);
        System.out.println(s2);

        //方式3
        //String(char[] value, int offset, int count)  把字符数组中的一部分数据封装成字符串对象
        String s3 = new String(chs,0, chs.length-1);
        System.out.println(s3);

        //方式4
        String s4 = "hello";
        System.out.println(s4);
    }

}
