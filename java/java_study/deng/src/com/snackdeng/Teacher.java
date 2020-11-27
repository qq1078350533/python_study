package com.snackdeng;

public class Teacher {
    private String name; //教师的名字
    private int age; //年龄

    public Teacher(){
        super();
    }
    public void teach(){
        System.out.println("jiao shi");
    }

    public String getName() {
        return name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void setName(String name) {
        this.name = name;
    }

    private int year; //年份
    private boolean isLeapYear() {
        if ((year%4==0&&year%100!=0)) {
            return true;
        }else {
            return false;
        }
    }
}

