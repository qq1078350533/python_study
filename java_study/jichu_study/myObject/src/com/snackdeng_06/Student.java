package com.snackdeng_06;
/*
    构造方法：
        给对象数据进行初始化

    格式
        方法名和类名相同
        没有返回值类型，连void都不能写
        没有具体的返回值

    构造方法的注意事项
        A：如果我们没有输出构造方法，系统将会提供一个默认的无参构造方法
        B:如果我们给出了构造方法，系统取消默认构造方法
        推荐：自己构造无参构造方法
        C:构造方法是可以重载的

    成员变量赋值：
        A:setxxx()方法
        B:带参数的构造方法
 */
public class Student {
    private int age;
    private String name;
//    public Student() {
//        System.out.println("这是构造方法");
//    }

    public Student() {}

    public Student(String name){
        this.name = name;
    }

    public Student(int age) {
        this.age = age;
    }
    public Student(String name,int age){
        this.name = name;
        this.age = age;
    }

    public void show(){
        System.out.println(name+"-----"+age);
    }
}
