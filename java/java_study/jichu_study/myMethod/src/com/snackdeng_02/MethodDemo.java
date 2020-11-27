package com.snackdeng_02;
/*
    控制台输出10次heloworld

    如果一个方法没有返回值类型，也不能把返回值的类型的地方空出来，应该西void表示该方法无返回值类型
    void方法调用只能单独调用
* */
public class MethodDemo {
    public static void main(String[] args) {
        //单独调用
        helloWorl();

        //输出调用
//        System.out.println(helloWorl());

        //赋值调用
//        void v = helloWorl();

    }

    public static void helloWorl() {
        for (int i = 1; i < 11; i++) {
            System.out.println("heelo world");
        }
    }
}
