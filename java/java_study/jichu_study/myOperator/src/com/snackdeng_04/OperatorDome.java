package myOperator.src.com.snackdeng_04;

/*
    �߼������
    &,|,^,!
    &&,||

    &:�м�ȫΪ�٣�ȫ���Ϊ��
    |:����ȫΪ�棬ȫ�ٲ�Ϊ��
    ^:��ͬΪ�٣���ͬΪ��
    !:����٣�������
* */
public class OperatorDome {
    public static void main(String[] args) {
        //�������
        int a = 3;
        int b = 4;
        int c = 5;

        //&
        System.out.println((a > b) && (a > c)); //false & false
        System.out.println((a < b) && (a > c)); //true & false
        System.out.println((a > b) && (a < c)); //false & true
        System.out.println((a < b) && (a < c)); //true & true
        System.out.println("--------------------");

        // |
        System.out.println((a > b) | (a > c)); //false | false
        System.out.println((a < b) | (a > c)); //true | false
        System.out.println((a > b) | (a < c)); //false | true
        System.out.println((a < b) | (a < c)); //true | true
        System.out.println("--------------------");

        // ^
        System.out.println((a > b) ^ (a > c)); //false ^ false
        System.out.println((a < b) ^ (a > c)); //true ^ false
        System.out.println((a > b) ^ (a < c)); //false ^ true
        System.out.println((a < b) ^ (a < c)); //true ^ true
        System.out.println("--------------------");

        // ��
        System.out.println((a > b));
        System.out.println(!(a > b));
        System.out.println(!!(a > b));
        System.out.println("--------------------");
    }
}
