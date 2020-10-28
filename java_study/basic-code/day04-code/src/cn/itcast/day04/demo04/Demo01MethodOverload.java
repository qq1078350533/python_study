package cn.itcast.day04.demo04;
// 方法的重载，方法名称一样，参数不一样，
/*
方法重载因素相关：参数的个数不同，参数类型不同, 参数的多类型顺序不同
方法重载因素不相关：与参数的名称无关
*/
public class Demo01MethodOverload {
    public static void main(String[] args) {
        System.out.println(sum(10,20,30,40));
    }

    public static int sum(int a, double b){
        return (int) (a + b);// 顺序不同
    }

    public static int sum(double a, int b){
        return (int) (a + b);// 顺序不同
    }

    public static int sum(int a, int b){
        return a + b;
    }

    // 错误写法 与参数的名称无关
    /*public static int sum(int x, int y){
        return x + y;
    }*/

    public static int sum(double a, double b){
        return (int) (a + b);
    } // 参数类型不同

    public static int sum(int a, int b, int c){
        return a + b + c;
    }

    public  static int sum(int a, int b, int c, int d){
        return a + b + c + d;
    }
}
