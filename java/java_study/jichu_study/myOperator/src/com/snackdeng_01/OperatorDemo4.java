package myOperator.src.com.snackdeng_01;
/*
    ++,--�ȿ������ڱ�����ǰ�棬Ҳ�������ڱ�����ǰ�档

    ����ʹ�õ�ʱ��++���������ڱ�����ǰ����ߺ��棬���һ��
    ��������������ʱ��:
        ++�ں��棬���ñ�����������Ȼ�������++
        ++��ǰ�棬�ȱ���++��Ȼ�����ñ���������
* */

public class OperatorDemo4 {
    public static void main(String[] args) {
        //�������
        int a = 10;
        System.out.println("a:" + a);

        //++��ʾ
//        a++;
//        ++a;
//        System.out.println("a:" + a);

        //���������Ĳ���
//        int b = a;
//        int b = a++;
        int b = ++a;
        System.out.println("a:" + a);
        System.out.println("b:" + b);

    }
}
