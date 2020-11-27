package cn.itcast.day04.demo02;

import java.net.StandardSocketOptions;

public class Demo04MethodRetur {
    public static void main(String[] args) {
        int num = getSum(10,20);
        System.out.println("返回值是：" + num);

        printSum(20, 100);
    }

    public static int getSum(int a, int b){
        int result = a + b;
        return result;
    }

    public static void printSum(int a, int b){
        int result = a + b;
        System.out.println("结果是：" + result);
    }
}
