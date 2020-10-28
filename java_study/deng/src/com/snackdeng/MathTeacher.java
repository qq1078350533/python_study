package com.snackdeng;

public class MathTeacher extends Teacher{
    public MathTeacher(){
        super();
    }
    // public MathTeacher(String name, int age){
//        super(name, age);
//    }

    public void teach() {
        super.teach();
        System.out.println("dasda");
    }

    public static void main(String[] args) {
        MathTeacher tec = new MathTeacher();
        tec.teach();
    }
}
