package com.snackdeng_01;

import java.util.Scanner;

/*
    Scanner:用于获取键盘录入的数值（基本数据类型，字符串数据）
        public String nextLine() 录入字符串数据
 */
public class ScannerDemo {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("请输入字符串");
        String a = s.nextLine();

        //输出结果
        System.out.println(a);

    }
}

