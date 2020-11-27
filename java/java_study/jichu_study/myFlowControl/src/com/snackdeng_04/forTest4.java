package com.snackdeng_04;
/*
    输出所有水仙花数
* */
public class forTest4 {
    public static void main(String[] args) {
        for (int x = 100; x<=999; x++) {
            int ge = x%10;
            int shi = x/10%10;
            int bai = x/100%10;

            if ((ge*ge*ge+shi*shi*shi+bai*bai*bai) == x) {
                System.out.println("x:"+x);
            }
        }
    }
}
