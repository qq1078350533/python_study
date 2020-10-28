package com.snackdeng_01;
/*
    使用类
* */
public class StudentDemo {
    public static void main(String[] args) {
        Student s = new Student();

        //输出成员变量值
        System.out.println("姓名"+s.name);
        System.out.println("年龄"+s.age);

        //成员赋值
        s.name = "deng";
        s.age = 20;

        //输出成员变量值
        System.out.println("姓名"+s.name);
        System.out.println("年龄"+s.age);

        //调用方法
        s.study();
        s.eat();
    }
}
