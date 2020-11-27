package com.snackdeng_03;
/*
    学生类的测试对象
 */

public class StudengDemo {
    public static void main(String[] args) {
        Studeng s = new Studeng();
        s.show();

        s.name = "邓庚辉";
//        s.age = -12;
        s.setAge(28);
        s.show();
    }
}
