package cn.itcast.day04.demo3;

// 判断两个数字是否相等
public class Demo01MethodSame {
    public static void main(String[] args) {
        System.out.println(isSamne(10,20)); //false
        System.out.println(isSamne(30, 20)); // false
        System.out.println(isSamne(20, 20)); // true
    }
    // 判断布尔值
    public static boolean isSamne(int a, int b){
        // 第一种
//        boolean same;

        /*if (a == b){
            same = true;
        }else {
            same = false;
        }*/
        // 第二种
//            boolean same = a == b ? true : false;
            //第三种
//        boolean same = a == b;
        return a == b;
    }
}
