package com.snackdeng;

import java.util.Random;
import java.util.Scanner;

/*
    系统产生一个1-100的随机数，你来猜
* */
public class RandomTest {
    public static void main(String[] args) {
        //产生一个随机数
        Random r = new Random();
        int number = r.nextInt(100);

        while (true) {
        //键盘录入
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入你要猜的数字：（1-100）");
        int a = sc.nextInt();

            if (a > number) {
                System.out.println("你猜的数据大了");
            } else if (a < number) {
                System.out.println("你猜的数据小了");
            } else {
                System.out.println("你猜对了");
                break;
            }
        }
    }
}
