package com.snackdeng_01;
/*

* */
public class ArryTest3 {
    public static void main(String[] args) {
        //定义一个数组
        int[] arr = new int[3];
        //赋值
        arr[0] = 100;
        arr[1] = 200;
        arr[2] = 300;
        System.out.println(arr);
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(arr[2]);

        System.out.println("==============");

        //赋值给第二个数组
        int[] arr2 = arr;
        //给arr2赋值
        arr2[0] = 111;
        arr2[1] = 222;
        arr2[2] = 333;
        System.out.println(arr2);
        System.out.println(arr2[0]);
        System.out.println(arr2[1]);
        System.out.println(arr2[2]);
    }
}
