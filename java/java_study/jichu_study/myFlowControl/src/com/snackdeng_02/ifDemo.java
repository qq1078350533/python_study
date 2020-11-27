package com.snackdeng_02;

import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;
import org.w3c.dom.ls.LSOutput;

/*
    if语句三种格式

    if语句格式一：
        if(关系表达式) {
            语句体；
        }

    执行流程：
        A:首先计算关系表达式的值，看是true，还是false
        B:如果是true，就执行语句体
        C:如果为false，就不执行语句体
* */
public class ifDemo {
    public static void main(String[] args) {
        System.out.println("开始");

        //定义变量
        int a = 10;
        int b = 20;

        if (a == b) {
            System.out.println("a等于b");
        }

        //定义变量
        int c = 10;
        if (a == c) {
            System.out.println("a等于c");
        }

        System.out.println("结束");
    }
}
