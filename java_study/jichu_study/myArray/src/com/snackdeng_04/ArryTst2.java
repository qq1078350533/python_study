package com.snackdeng_04;
/*
    遍历数组得到最大值最小值
* */
public class ArryTst2 {
    public static void main(String[] args) {
        int[] arr = {1,23,231,45,12};

        //定义最大值参照物
        int max = arr[0];

        for (int x=1; x<arr.length; x++) {
            if (arr[x] > max) {
                max = arr[x];
            }
        }

        //定义最小值参照物
        int min = arr[0];
        for (int x=1; x<arr.length; x++){
            if (arr[x] < min) {
                min = arr[x];
            }
        }
        System.out.println("最大值:"+max);
        System.out.println("最小值："+min);
    }
}
