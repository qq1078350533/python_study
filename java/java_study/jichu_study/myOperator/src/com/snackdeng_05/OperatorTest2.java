package myOperator.src.com.snackdeng_05;
/*
    ��ȡ�������������ֵ
* */
public class OperatorTest2 {
    public static void main(String[] args) {
        //������������
        int a = 10;
        int b = 20;
        int c = 30;

        //�Ȼ�ȡ�������ݵ����ֵ���ں͵������Ƚϼ���
        int temp = (a>b)?a:b;
        int max = (temp>c)?temp:c;
        System.out.println(max);
    }
}
