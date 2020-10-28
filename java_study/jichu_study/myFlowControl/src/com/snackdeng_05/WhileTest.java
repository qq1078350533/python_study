package com.snackdeng_05;
/*
    求1-100之和
* */
public class WhileTest {
    public static void main(String[] args) {
        //for
        //定义求和变量
//        int sum = 0;
//        for (int x=1; x<=100; x++) {
//            sum += x;
//        }
//        System.out.println(sum);

        //while
        int sum = 0;
        int x = 1;
        while (x<=100) {
            sum += x;
            x++;
        }
        System.out.println(sum);
    }
}
