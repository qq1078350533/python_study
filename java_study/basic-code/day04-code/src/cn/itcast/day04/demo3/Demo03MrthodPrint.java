package cn.itcast.day04.demo3;

//定义一个方法，用来打印指定次数的hello world。
public class Demo03MrthodPrint {
    public static void main(String[] args) {
        printCount(15);
    }
    public static void printCount(int num){
        for (int i = 0; i < num; i++) {
            System.out.println("Hello world!!!" + (i +1));
        }
    }
}
