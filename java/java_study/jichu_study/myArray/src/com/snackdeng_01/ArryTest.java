package com.snackdeng_01;
/*
    定义数组并且赋值
* */
public class ArryTest {
    public static void main(String[] args) {
        //定义数组
        int[] arr = new int[3];

        //输出数组名和元素
        System.out.println(arr);
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(arr[2]);

        System.out.println("====================");

        //赋值
        arr[0] = 100;
//        arr[1] = 2;
        arr[2] = 3;
        //输出数组名和元素
        System.out.println(arr);
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(arr[2]);
    }
}
