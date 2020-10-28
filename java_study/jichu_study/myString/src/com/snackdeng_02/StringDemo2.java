package com.snackdeng_02;
/*
    构造方法和赋值创建字符串对象的区别

    ==
        基本数据类型：比较的是基本数据类型的值是否相同
        引用数据类型：比较的是引用数据类型的地址值是否相同
 */
public class StringDemo2 {
    public static void main(String[] args) {
        String s1 = new String("hello");
        String s2 = "hello";

        System.out.println(s1);
        System.out.println(s2);

        String s3 = "hello";
        System.out.println("s1==s2 "+(s1==s2));//false
        System.out.println("s2==s3 "+(s2==s3));//true
    }
}
