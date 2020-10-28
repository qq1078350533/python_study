package com.snackdeng_01;
/*
    +:加法运算

    字符参与运算，其实是拿字符串在计算机中存储的数据值来参与运算的
        ‘A’:65
        'a'：97
        ‘0’：48

    字符串参与加法运算，其实是拼接
* */
public class OperatorDemo3 {
    public static void main(String[] args) {
        //定义变量
        int a = 10;
        int b = 20;

        System.out.println(a + b);

        //字符参与变量
        char c = 'A';
        System.out.println(a + c);

        //字符串参与加法运算
        System.out.println("hello" + a);

        System.out.println("hello" + a + b);

        System.out.println( a + b + "hello");

    }
}
