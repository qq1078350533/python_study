package com.snackdeng_01;
/*
    数组：存储同一种数据类型的多个元素的容器

    定义格式
        A:数据类型[] 数组名;（推荐）
        B:数据类型 数组名[];

    数组初始化
        A:所谓的初始化，就是为数组开辟内存空间，并为数组中的每个元素赋予初始值
        B:我们有两种方式可以实现数组的初始化
            a:动态初始化  只给出长度，由系统给出初始化值
            b:静态初始化  给出初始化值，由系统决定长度

    动态初始化：
        数据类型[] 数组名 = new 数据类型[数据长度]

* */
public class ArryDemo {
    public static void main(String[] args) {
        //数据类型[] 数组名 = new 数据类型[数据长度]
        int[] arr = new int[3];
        System.out.println(arr[1]); //[I@1b6d3586   这是地址值
    }
}
