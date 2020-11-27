package com.snackdeng_01;

import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("«Î ‰»Î‘¬∑›");
        int month = sc.nextInt();

        if((month == 1) || (month == 2) || (month == 12) ) {
            System.out.println("∂¨ºæ");
        }else if((month == 3) || (month == 4) || (month == 5) ) {
            System.out.println("¥∫ºæ");
        }else if((month == 6) || (month == 7) || (month == 8) ) {
            System.out.println("œƒºæ");
        }else if((month == 9) || (month == 10) || (month == 11) ) {
            System.out.println("«Ôºæ");
        }else {
            System.out.println(" ‰»Î¥ÌŒÛ");
        }
    }
}
