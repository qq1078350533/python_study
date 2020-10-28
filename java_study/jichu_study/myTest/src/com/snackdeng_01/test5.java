package myTest.src.com.snackdeng_01;

import java.util.Scanner;

/*
    数组的反转
* */
public class test5 {
    public static void main(String[] args) {
        int [] arr = new int[5];
        Scanner sc =new Scanner(System.in);
        for (int i = 0; i <arr.length ; i++) {
            System.out.println("请输入数字");
            int a = sc.nextInt();
            arr[i] = a;
        }
        s(arr);
        v(arr);
    }

    public static void v(int[] arr){
        System.out.print("[");
        for (int i = 0; i <arr.length ; i++) {
            if (i==arr.length-1){
                System.out.println(arr[i]+"]");
            }else {
                System.out.print(arr[i]+",");
            }
        }
    }

    public static void s(int[] arr) {
        for (int start = 0,end=arr.length-1; start < end; start++,end--) {
            int temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;
        }
    }
}
