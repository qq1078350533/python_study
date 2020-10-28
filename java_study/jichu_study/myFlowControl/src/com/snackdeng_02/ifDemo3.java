package com.snackdeng_02;
/*
    if语句格式2：
        if(关系表达式1) {
            语句体1；
        }else if(关系表达式2){
            语句体2；
        }
        ...
        else {
            语句体n+1；
        }

    执行流程：
        A:首先计算关系表达式1的值，看是true，还是false
        B:如果是true，就执行语句体1
        C:如果为false，就继续计算关系表达式2的值，看是true，还是false
        D:如果是true，执行语句体2
        E:如果是false，就继续计算关系表达式3的值，看是true，还是false
        F:当所有的关系表达式为false时，就执行语句体n+1，
* */
public class ifDemo3 {
    public static void main(String[] args) {
        System.out.println("开始");

        //定义变量
        int x = 5;
        //重新赋值
        x = -8;

        int y;
        if (x >= 3) {
            y = 2*x +1;
        }else if (x >= -1 && x < 3) {
            y = 2 * x;
        }else if (x <= -1) {
            y = 2*x -1;
        }else {
            y = 0;
            System.out.println("不存在这样的x");
        }

        System.out.println("y:"+y);

        System.out.println("结束");
    }
}
