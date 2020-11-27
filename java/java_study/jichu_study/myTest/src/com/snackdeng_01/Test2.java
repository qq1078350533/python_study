package myTest.src.com.snackdeng_01;

import java.util.Scanner;

public class Test2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println(" ‰»Î‘¬∑›");
        int month = sc.nextInt();

        switch (month) {
            case 1:
            case 2:
            case 12:
                System.out.println("∂¨ºæ");
                break;
            case 3:
            case 4:
            case 5:
                System.out.println("¥∫ºæ");
                break;
            case 6:
            case 7:
            case 8:
                System.out.println("œƒºæ");
                break;
            case 9:
            case 10:
            case 11:
                System.out.println("«Ôºæ");
                break;
            default:
                System.out.println(" ‰»Î¥ÌŒÛ");
                break;
        }
    }
}
