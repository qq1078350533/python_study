package myOperator.src.com.snackdeng_01;
/*
    ++,--既可以用在变量的前面，也可以用在变量的前面。

    单独使用的时候，++，——放在变量的前面或者后面，结果一样
    参与其他操作的时候:
        ++在后面，先拿变量做操作，然后变量在++
        ++在前面，先变量++，然后再拿变量做操作
* */

public class OperatorDemo4 {
    public static void main(String[] args) {
        //定义变量
        int a = 10;
        System.out.println("a:" + a);

        //++演示
//        a++;
//        ++a;
//        System.out.println("a:" + a);

        //参与其他的操作
//        int b = a;
//        int b = a++;
        int b = ++a;
        System.out.println("a:" + a);
        System.out.println("b:" + b);

    }
}
