package com.snackdeng_01;
/*
    方法：其实就是完成特定功能得代码块

    定义格式
        修饰符 返回值类型 方法名（参数类型 参数名1，参数类型 参数名2）{
                方法体；
                return 返回值；
            }

    格式解释：
        A:修饰符 目前记住 public static

* */
public class MethodDemo {
    public static void main(String[] args) {
        //输出调用
        System.out.println(sum(3,2));
        //赋值调用
        int result = sum(2,4);
        System.out.println(result);
    }

    public static int sum(int a, int b) {
        int c = a + b;
        return c;
    }

}
