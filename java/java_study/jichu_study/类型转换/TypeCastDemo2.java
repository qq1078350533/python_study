package 类型转换;
/*
    强制转换：
        目标类型 变量名 = （目标类型）（被转换的数据）
        建议，数据做运算，结果应该是什么类型，就用什么类型接收，不要随意转换类型，否则会有精度损失
*/
public class TypeCastDemo2 {
    public static void main(String[] args) {
        //定义两个变量
        int a = 10;
        byte b = 20;
        int c = a + b;
        System.out.println(c);

        byte d = (byte) (a + b);
        System.out.println(d);
    }
}
