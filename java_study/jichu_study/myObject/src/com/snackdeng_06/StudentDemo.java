package com.snackdeng_06;
/*
    如何工作方法呢
    通过new方法调用
    格式 类名对象名 = new 构造方法（）；
 */
public class StudentDemo {
    public static void main(String[] args) {
        Student s = new Student();
        s.show();

        //public Student(String name)
        Student s2 = new Student("邓庚辉");
        s2.show();

        //public Student(int age)
        Student s3 = new Student(19);
        s3.show();

        //public Student(String name,int age)
        Student s4 = new Student("邓庚辉",29);
        s4.show();
    }
}
