package ����ת��;
/*
    +:���������

    ����ת����
        ��ʽת��
        ǿ��ת��

    ��ʽת����
        byte��short,char -- int -- long -- float -- double
* */
public class TyoeCastDemo {
    public static void main(String[] args) {
        //������������
        int a = 3;
        int b = 4;
        int c = a + b;
        System.out.println(c);

        //����һ��byte���ͱ�����һ��int���ͱ���
        byte bb = 3;
        int cc = 5;
        System.out.println(bb + cc);

        //������Ͳ�һ�£�����ʲô���ͽ�����
        //byte dd = bb + cc;  ������ʧ����
        int ee = bb + cc;
//        System.out.println(dd);
        System.out.println(ee);
    }
}
