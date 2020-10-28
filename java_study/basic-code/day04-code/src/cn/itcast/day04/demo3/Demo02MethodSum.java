package cn.itcast.day04.demo3;

// 定义一个方法 求1-100的和
public class Demo02MethodSum {
    public static void main(String[] args) {
        System.out.println("结果是：" + getSum());
    }
    public static int getSum(){
        int sum = 0;
        for (int i = 1; i <= 100; i++) {
            sum += i ;
        }
        return sum;
    }
}
