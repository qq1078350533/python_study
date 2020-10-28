package com.snackdeng_05;
/*
    学生类

    起名字我们要求做到见名知意

    如果有局部变量名和成员变量名相同，在局部使用的时候，采用的是就近原则
    怎么解决呢
        this:代表所在类的对象引用
            方法被那个对象引用，this就代表那个对象

    使用场景
        局部变量隐藏成员变量
 */
public class Student {
    private String name;
    private int age;

    public void setName(String name) {//邓庚辉
//        name = name;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAge(int age) {
//        age = age;
        this.age = age;
    }

    public int getAge(){
        return age;
    }
}
