//package myOperator.src.com.snackdeng_04;
/*
    &&��&�Ľ��һ��
    ||��|�Ľ��һ��

    &&��&������
        &&�ж�·Ч�������Ϊfalse���ұ߲�ִ�С����Ϊ�棬�ұ�ִ�С�
        &���������ʲô���ұ߶���ִ�С�

* */
public class OperatorDemo2 {

    public static void main(String[] args) {
        //�������
        int a = 3;
        int b = 4;
        int c = 5;

        //&&
        System.out.println((a >b) && (a >c)); //false && false
        System.out.println((a <b) && (a >c)); //true && false
        System.out.println((a >b) && (a <c)); //false && true
        System.out.println((a <b) && (a <c)); //true && true
        System.out.println("--------------------");

        // ||
        System.out.println((a >b) || (a >c)); //false || false
        System.out.println((a <b) || (a >c)); //true || false
        System.out.println((a >b) || (a <c)); //false || true
        System.out.println((a <b) || (a <c)); //true || true
        System.out.println("--------------------");

        //�������
        int x = 10;
        int y = 20;
//        System.out.println((x++ > 10) & (y++ > 20)); //false & false
//        System.out.println((x++ > 10) && (y++ > 20));  //false && false
        System.out.println((++x > 10) && (y++ > 20));  //true && false
//        System.out.println((++x > 10) && (++y > 20));  //true && true
        System.out.println("x:"+x);
        System.out.println("y:"+y);
        System.out.println("--------------------");
    }
}
