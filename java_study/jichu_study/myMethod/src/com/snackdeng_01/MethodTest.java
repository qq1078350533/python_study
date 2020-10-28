package com.snackdeng_01;

import java.util.Scanner;

/*
    键盘录入两个数据，返回两个数值中的最大�?
* */
public class MethodTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入第一个�?");
        int a = sc.nextInt();
        System.out.println("请输入第二个�?");
        int b = sc.nextInt();
        int max = getMax(a,b);
        System.out.println("这两个的最大值为"+max);
    }

    public static int getMax(int a,int b){
        if (a > b){
            return a;
        }else {
            return b;
        }
    }
}
