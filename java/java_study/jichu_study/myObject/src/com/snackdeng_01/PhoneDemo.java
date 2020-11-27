package com.snackdeng_01;

public class PhoneDemo {
    public static void main(String[] args) {
        //创建对象
        Phone p = new Phone();

        //输出成员变量值
        System.out.println("品牌"+p.brand);
        System.out.println("价格"+p.price);
        System.out.println("颜色"+p.color);

        //赋值
        p.brand = "锤子";
        p.price = 2990;
        p.color = "红色";

        //输出成员变量值
        System.out.println("品牌"+p.brand);
        System.out.println("价格"+p.price);
        System.out.println("颜色"+p.color);

        //调用方法
        p.call("邓庚辉");
        p.sendMessage();
    }


}
