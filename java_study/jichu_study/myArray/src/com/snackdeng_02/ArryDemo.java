package com.snackdeng_02;
/*
    静态初始化格式：
        数据类型[] 数组名 = new 数据类型[] {元素。。。};

        举例：
            int[] arr = new int[] {1,2,3,4,5,6,7,8,9,0};
        简化：
            int[] arr2 = {1,2,3};
*/
public class ArryDemo {
    public static void main(String[] args) {
        int[] arr = new int[] {1,2,3,4,5,6,7,8,9,0};
        int[] arr2 = {1,2,3};
        System.out.println(arr[9]);
        System.out.println(arr2[11]);
    }
}
