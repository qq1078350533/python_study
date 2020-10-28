package myOperator.src.com.snackdeng_05;
/*
    获取三个整数的最大值
* */
public class OperatorTest2 {
    public static void main(String[] args) {
        //定义三个变量
        int a = 10;
        int b = 20;
        int c = 30;

        //先获取两个数据的最大值，在和第三个比较即可
        int temp = (a>b)?a:b;
        int max = (temp>c)?temp:c;
        System.out.println(max);
    }
}
