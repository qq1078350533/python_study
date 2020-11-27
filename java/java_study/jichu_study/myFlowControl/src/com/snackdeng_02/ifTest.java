package com.snackdeng_02;

import java.util.Scanner;

/*
    键盘录入两个数据，获取最大值

    分析：
        A:看到键盘录入，就想到三个步骤
            导包，创建键盘录入对象，接收数据
        B:获取这两个的最大值
        C:输出最大数据

    导包：
        A：手动导入
        B：点击鼠标自动生成
        C：快捷键（推荐）alt + enter
* */
public class ifTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        //接收数据
        System.out.println("接收第一个数据：");
        int a = sc.nextInt();

        System.out.println("接收第二个数据：");
        int b = sc.nextInt();

        //比较
//        if (a > b) {
//            System.out.println("最大的值为a："+a);
//        } else {
//            System.out.println("最大的值为b："+b);
//        }

        //老哥数据比较完之后，拿最大值做其他操作
        //定义一个变量用于接收较大的值
        int max;
        if (a > b) {
            max = a;
        }else {
            max = b;
        }

        System.out.println("大的值是"+max);
    }
}
