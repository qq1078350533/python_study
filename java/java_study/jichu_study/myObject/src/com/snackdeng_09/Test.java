package com.snackdeng_09;

/*

 */
public class Test {
    public static void main(String[] args) {
        Teacher t = new Teacher();
        //等价于t.t.getStudent().study();
        Student s = t.getStudent();
        s.study();
    }
}

