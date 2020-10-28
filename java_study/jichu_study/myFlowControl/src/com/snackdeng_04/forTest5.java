package com.snackdeng_04;
/*
      统计水仙花数个数
 */

public class forTest5 {
    public static void main(String[] args) {
        int cont = 0;
        for (int x = 100; x <= 999; x++) {
            int ge = x % 10;
            int shi = x / 10 % 10;
            int bai = x / 100 % 10;

            if ((ge * ge * ge + shi * shi * shi + bai * bai * bai) == x) {
                cont++;
            }
        }
        System.out.println("cont:" + cont);
    }
}