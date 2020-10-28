package com.snackdeng_04;
/*
    遍历数组
* */
public class ArryTest {
    public static void main(String[] args) {
        int[] arr = {1,2,3,4};

        for (int x=0; x<=3; x++) {
            System.out.println(arr[x]);
        }
        System.out.println("=======");

        for (int x=0; x<arr.length; x++){
            System.out.println(arr[x]);
        }
    }
}
