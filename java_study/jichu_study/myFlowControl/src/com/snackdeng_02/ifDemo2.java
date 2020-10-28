package com.snackdeng_02;
/*
    if语句格式2：
        if(关系表达式) {
            语句体1；
        }else{
            语句体2；
            }

    执行流程：
        A:首先计算关系表达式的值，看是true，还是false
        B:如果是true，就执行语句体1
        C:如果为false，就执行语句体2
* */
public class ifDemo2 {
    public static void main(String[] args) {
        System.out.println("开始");

        //判断一个数是偶数还是奇数
        //定义变量
        int a = 1001134;
        //重新复制
        a = 11;

        if (a % 2 == 0) {
            System.out.println("a是偶数");
        }else {
            System.out.println("a是奇数");
        }

        System.out.println("结束");
    }
}
