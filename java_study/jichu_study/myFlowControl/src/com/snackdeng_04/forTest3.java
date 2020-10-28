package com.snackdeng_04;
/*
    1-100偶数之和
* */
public class forTest3 {
    public static void main(String[] args) {
        int sum = 0;
        // 第一种方式

//        for (int i=1;i<=100;i++) {
//            if (i%2==0) {
//                sum += i;
//            }
//        }


        //第二种
        for (int i=0;i<=100;i+=2) {
                sum += i;
        }
        System.out.println(sum);
    }
}
