package com.snackdeng_01;

public class Phone {
    //品牌
    String brand;
    //价格
    int price;
    //颜色
    String color;

    //打电话
    public void call(String name) {
        System.out.println("给"+name+"打电话");
    }

    //发短信
    public void sendMessage() {
        System.out.println("群发短信");
    }
}
