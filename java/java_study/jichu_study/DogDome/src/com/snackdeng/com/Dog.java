package com.snackdeng.com;

import java.util.StringJoiner;

public class Dog {
    private String name; //狗名
    private String variety; //品种

    //有参
    public Dog(String name, String variety) {
        super();
        this.name = name;
        this.variety = variety;
    }

    //无参
    public Dog() {
        super();
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVariety() {
        return variety;
    }

    public void setVariety(String variety) {
        this.variety = variety;
    }

    @Override
    public String toString() {
        return "Dog{" +
                "名字='" + name + '\'' +
                ", 品种='" + variety + '\'' +
                '}';
    }
}
