package com.snackdeng_04;
/*学生类的测试类

 */
public class StudentDemo {
    public static void main(String[] args) {
        Student s = new Student();
        System.out.println(s.getName()+"----"+s.getAge());

        s.setAge(28);
        s.setName("邓庚辉");
        System.out.println(s.getName()+"----"+s.getAge());
    }
}
