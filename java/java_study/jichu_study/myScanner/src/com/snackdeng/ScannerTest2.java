package com.snackdeng;
import java.util.Scanner;
/*
    键盘录入两个数据,比较两个数据相等
* */
public class ScannerTest2 {
    public static void main(String[] args) {
        //创建键盘录入对象
        Scanner sc = new Scanner(System.in);

        //接收数据
        System.out.println("输入第一个数据:");
        int a = sc.nextInt();

        System.out.println("请输入第二个数据:");
        int b = sc.nextInt();

//        boolean flag = (a == b) ? true : false;
        boolean flag = (a==b);
        System.out.println(flag);
    }
}
