package com.snackdeng_01;

import java.util.Scanner;

/*
    键盘录入整数
    每一位数字都加5，除以10的余数代替数字
    再将第一位和第四位交换，2和3互换
    在输出
* */
public class Test7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入一个整数");
        int number = sc.nextInt();

        int arr[] = new int[4];
        arr[0] = number/10/10/10%10;
        arr[1] = number/10/10%10;
        arr[2] = number/10%10;
        arr[3] = number%10;

        for (int i = 0; i <4 ; i++) {
            arr[i] += 5;
            arr[i] %= 10;
        }

        //交换位置
        int temp = arr[0];
        arr[0] = arr[3];
        arr[3] = temp;

        temp = arr[1];
        arr[1] = arr[2];
        arr[2] = temp;
        for (int i = 0; i <arr.length ; i++) {
            System.out.print(arr[i]);
        }
        System.out.println();
    }
}
