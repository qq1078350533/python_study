package myOperator.src.com.snackdeng_03;
/*
    关系运算符：
        ==，！=，>,>=,<=
        关系运算符的结果是boolean类型
* */
public class OperatorDemo {
    public static void main(String[] args) {
        //定义变量
        int a = 10;
        int b = 20;
        int c = 10;

        //==
        System.out.println(a == b);
        System.out.println(a == c);
        System.out.println("============");

        //!=
        System.out.println(a != b);
        System.out.println(a != c);
        System.out.println("============");

        //>
        System.out.println(a > b);
        System.out.println(a > c);
        System.out.println("============");

        //>=
        System.out.println(a >= b);
        System.out.println(a >= c);
        System.out.println("============");
    }
}
