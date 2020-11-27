package com.snackdeng_02;
/*
    成员变量和局部变量的区别：
        A：位置不同
        B:内存中的位置不同
            成员变量：堆内存
            局部变量：栈内存
        C:生命周期不一样：
            成员变量随着类对象的消失而消失
            局部变量随着类方法的消失而消失
        D：初始值的问题
            成员变量，有默认值
            局部变量没有默认值
* */

public class Variable {
    int x;
    public void show() {
        int y;
    }
}
