package com.snackdeng_01;
/*
    定义两个数组，分别赋值
* */
public class ArryTest2 {
    public static void main(String[] args) {
        //定义数组
        int[] arr = new int[2];
        int[] arr2 = new int[3];

        arr[1] = 1;
        arr2[2] = 23;
        arr2[0] = 233;

        System.out.println(arr);
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println("================");
        System.out.println(arr2);
        System.out.println(arr2[0]);
        System.out.println(arr2[1]);
        System.out.println(arr2[2]);
    }
}
