package com.snackdeng_03;
/*
    ArrayIndexOutOfBoundsException 超出索引范围
    NullPointerException    空指针异常
        产生原因：数组已经不在指向堆内存的数据了，你还在访问
* */
public class ArryDemo {
    public static void main(String[] args) {
        int[] arr = {1,2,3};

        arr = null;
        System.out.println(arr[1]);
    }
}
