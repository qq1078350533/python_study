package myTest.src.com.snackdeng_01;
/*
    1£¬1£¬2£¬3£¬5£¬8£¬13
* */
public class Test4 {
    public static void main(String[] args) {
        int [] arr = new int[20];

        arr[0] = 1;
        arr[1] = 1;
        for (int i = 2; i < arr.length; i++) {
            arr[i] = arr[i-1] + arr[i-2];
//            a(i,arr);
        }
        System.out.println(arr[19]);
    }

    public static int a(int i,int[] arr) {
        arr[i] = arr[i-1] + arr[i-2];
        return arr[i];
    }
}
