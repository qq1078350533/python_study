package myOperator.src.com.snackdeng_03;
/*
    ��ϵ�������
        ==����=��>,>=,<=
        ��ϵ������Ľ����boolean����
* */
public class OperatorDemo {
    public static void main(String[] args) {
        //�������
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
