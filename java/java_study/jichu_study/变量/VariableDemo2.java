/*
    ���������ע������
        A������δ��ֵ������ֱ��ʹ��
        B:����ֻ���������ķ�Χ����Ч
            �������������ڵ��ǶԴ�����
        C:һ���Ͽ��Զ��������������ǲ�����
*/

package ����;

public class VariableDemo2 {
    public static void main(String[] args) {
        //����һ������
        int a = 10;
        System.out.println(a);

        int b;
        b = 20;
        System.out.println(b);

        {
            //�����
            int c = 20;
            System.out.println(c);
        }
        //System.out.println(c);

        int d,e;
        d = 10;
        e = 20;
        System.out.println(d);
        System.out.println(e);
    }
}
