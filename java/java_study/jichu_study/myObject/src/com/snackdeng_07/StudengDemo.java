package com.snackdeng_07;
/*
    学生类的测试方法
 */
public class StudengDemo {
    public static void main(String[] args) {
        //无参+setXxx()
        Student s = new Student();
        s.setName("邓庚辉");
        s.setAge(26);
        System.out.println(s.getName()+"----"+s.getAge());

        //带参构造
        Student s2 = new Student("邓庚辉",28);
        System.out.println(s2.getName()+"----"+s2.getAge());
    }
}
