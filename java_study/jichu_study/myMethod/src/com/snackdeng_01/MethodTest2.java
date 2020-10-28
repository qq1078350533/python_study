package com.snackdeng_01;
/*
    比较三个数
* */
public class MethodTest2 {
    public static void main(String[] args) {
        int result = getMax(2,31,41);
        System.out.println("最大值是："+result);
    }

    public static int getMax(int a, int b, int c) {
        if (a > b) {
            if (a > c) {
                return a;
            }else {
                return c;
            }
        }else if(b > c){
            return b;
        }else {
            return c;
        }
    }
}
