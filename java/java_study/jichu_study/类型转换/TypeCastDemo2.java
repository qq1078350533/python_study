package ����ת��;
/*
    ǿ��ת����
        Ŀ������ ������ = ��Ŀ�����ͣ�����ת�������ݣ�
        ���飬���������㣬���Ӧ����ʲô���ͣ�����ʲô���ͽ��գ���Ҫ����ת�����ͣ�������о�����ʧ
*/
public class TypeCastDemo2 {
    public static void main(String[] args) {
        //������������
        int a = 10;
        byte b = 20;
        int c = a + b;
        System.out.println(c);

        byte d = (byte) (a + b);
        System.out.println(d);
    }
}
