package com.snackdeng_03;
/*
    学生类

    通过对象直接访问成员变量，会存在数据安全问题
    如何实现限制呢
        private关键字

    针对private修饰的成员变量，我们相应的提供getxxx（）和setxxx（）用于获取成员变量的值
 */
public class Studeng {
    String name;
//    int age;

    private int age;

    public void setAge(int a) {
        if (a<0 || a>200) {
            System.out.println("你输入的年龄有误");
        }else {
            age = a;
        }

    }

    public int getAge() {
        return age;
    }

    public void show() {
        System.out.println("姓名是： "+name+"年龄是："+age);
    }
}
