package com.snackdeng;
import java.util.Scanner;
/*
    为了提高程序的灵活性，既需要键盘录入
    如何实现键盘录入？目前我们只能使用JDK提供的类Scanner。
    如何使用Scanner获取键盘录入数据，步骤如下
        A：导包
            import java.util.Scanner;
            在一个类中：pachage > import > class
        B:创建键盘录入对象
            Scanner sc = new Scanner(System.in)
        C:接收数据
            int i = sc.nextInt();
* */

public class ScannerDemo {
    public static void main(String[] args) {
        //创建键盘录入对象
        Scanner sc = new Scanner(System.in);

        //接收数据
        System.out.println("请输入一个数据:");
        int i = sc.nextInt();

        //输出结果
        System.out.println("i:"+i);
    }
}
