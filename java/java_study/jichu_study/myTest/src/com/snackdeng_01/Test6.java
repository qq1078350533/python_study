package myTest.src.com.snackdeng_01;
/*
    ��������һ��ֵ���ҳ����������е�����
* */
import java.util.Scanner;

public class Test6 {
    public static void main(String[] args) {
        int[] arr = {15,7,2,3,1};

        Scanner sc = new  Scanner(System.in);
        System.out.println("�����뱻��ѯ������:");
        int number = sc.nextInt();

        int index = getIndex(arr,number);
        System.out.println(index);
    }

    public static int getIndex(int[] arr, int value){
        //��������
        for (int i = 0; i < arr.length; i++) {
            if (arr[i]==value) {
                return i;
            }
        }
        return -1;
    }

}
