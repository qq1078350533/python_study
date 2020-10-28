package cn.itcast.day04.demo3;
// 注意事项
// 方法应定义在类中，但是不能在方法中定义类。
// 方法定义的顺序无所谓
// 方法在定义后不会调用，如果要调用：单独调用，打印调用，赋值调用
// 如果方法有返回值，那么必须写上return  返回值  不能没有
// return 后面的返回值数据， 必须和方法的返回值类型对应起来
// 对于一个void没有返回值的方法，不能写return后面的返回值，只能return自己。
// 对于方法当中最后一行的return可以省略不写。
// 一个方法中可以有多个return语句， 但是必须保证同时只有一个会被执行。,不能连写两个return
public class Demo04MethodNotice {
    public static void main(String[] args) {
    }

    public static int methode1(){
        return 10;
    }

    public static void method2(){
        return;
    }

    public static void methode3(){
        System.out.println("AAAAA");
        System.out.println("BBBBB");
//        return;  可以省略
    }

    public static int getMax(int a, int b){
        /*int max;
        if (a > b){
            max = a;
        } else {
            max = b;
        }
        return max;*/
        if (a > b){
            return a;
        } else {
            return b;
        }

    }
}
