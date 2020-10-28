package com.snackdeng_06;
/*
    do ...while循环语句格式
        do {
            循环语句体；
        }while (判断条件语句)；

    扩展格式：
        初始化语句；
        do {
            循环体语句；
            控制条件语句；
        }while （判断条件语句）；

    看while里的判断条件语句，如果为true就执行继续执行do代码块
        如果为false就结束循环
* */
public class DoWhileDemo {
    public static void main(String[] args) {
        //for
        for (int x=1; x<=10; x++) {
            System.out.println("heelo world");
        }
        System.out.println("--------------------");

        //do while
        int a = 1;
        do {
            System.out.println("hello world");
            a++;
        }while (a<=10);
    }
}
