package com.snackdeng_01;
/*
    运算符：就是用于对常量进行操作的符号

    表达式：用运算符链接来的符合Java语法的句子。不同运算符连接的表达式是不同类型的表达式。

    运算符分类：
        算术运算符
        赋值运算符
        关系运算符
        逻辑运算符
        三元运算符

    算术运算符：
        + — * / % ++ ——
* */
public class OperatorDemo {
    public static void main(String[] args) {
        //定义变量
        int a = 3;
        int b = 4;

        System.out.println(a + b);
        System.out.println(a - b);
        System.out.println(a * b);
        System.out.println(a / b);

        //整数相除只能得到整数，想要小数必须要有浮点数参加运算
        System.out.println(3.0 / 4);
        System.out.println(3 / 4.0);
    }
}
