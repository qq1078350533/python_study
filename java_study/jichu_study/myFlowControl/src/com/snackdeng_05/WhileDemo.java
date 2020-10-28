package com.snackdeng_05;
/*
    while循环语句格式
        while（判断条件语句）{
            循环语句体；
        }

    扩展格式：
        初始化语句；
        while（判断条件语句）{
            循环语句体；
            控制条件语句；
        }
* */
public class WhileDemo {
    public static void main(String[] args) {
        //输出10次hello world
//        for (int i=1; i<=10; i++) {
//            System.out.println("hello world");
//        }

        //用while改写
        int x = 1;
        while (x<=10) {
            System.out.println("hello world");
            x++;
        }
    }
}
