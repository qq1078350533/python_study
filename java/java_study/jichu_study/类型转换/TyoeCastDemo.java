package 类型转换;
/*
    +:这是运算符

    类型转换：
        隐式转换
        强制转换

    隐式转化：
        byte，short,char -- int -- long -- float -- double
* */
public class TyoeCastDemo {
    public static void main(String[] args) {
        //定义两个变量
        int a = 3;
        int b = 4;
        int c = a + b;
        System.out.println(c);

        //定义一个byte类型变量，一个int类型变量
        byte bb = 3;
        int cc = 5;
        System.out.println(bb + cc);

        //如果类型不一致，该用什么类型接收呢
        //byte dd = bb + cc;  可能损失精度
        int ee = bb + cc;
//        System.out.println(dd);
        System.out.println(ee);
    }
}
