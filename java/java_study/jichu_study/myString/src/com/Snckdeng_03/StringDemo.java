package com.Snckdeng_03;

import javax.annotation.Generated;
import java.sql.SQLOutput;

/*
    Object 是类层次结构中的根类，所有的类都直接或者间接的继承该类。
    如果一个方法的形式参数是Object，我们就可以传递它的任意的子类对象。

    boolean equals(Object anObject)  将此字符串与指定对象进行比较
    boolean equalsIgnoreCase(String anotherString) 比较字符串的内容是否相同（忽略大小写）
    boolean startsWith(String prefix)  判断字符串对象是否以指定的str开头
    boolean endsWith(String suffix) 判断字符串对象是否以指定的str结尾
    

 */
public class StringDemo {
    public static void main(String[] args) {
        String s1 = "hello";
        String s2 = "hello";
        String s3 = "Hello";
        //boolean equals(Object anObject)  将此字符串与指定对象进行比较
        System.out.println(s1.equals(s2));
        System.out.println(s1.equals(s3));

        //boolean equalsIgnoreCase(String anotherString) 比较字符串的内容是否相同（忽略大小写）
        System.out.println(s1.equalsIgnoreCase(s2));
        System.out.println(s1.equalsIgnoreCase(s3));
    }
}
