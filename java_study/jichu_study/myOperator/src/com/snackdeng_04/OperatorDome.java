package myOperator.src.com.snackdeng_04;

/*
    逻辑运算符
    &,|,^,!
    &&,||

    &:有假全为假，全真才为真
    |:有真全为真，全假才为假
    ^:相同为假，不同为真
    !:真则假，假则真
* */
public class OperatorDome {
    public static void main(String[] args) {
        //定义变量
        int a = 3;
        int b = 4;
        int c = 5;

        //&
        System.out.println((a > b) && (a > c)); //false & false
        System.out.println((a < b) && (a > c)); //true & false
        System.out.println((a > b) && (a < c)); //false & true
        System.out.println((a < b) && (a < c)); //true & true
        System.out.println("--------------------");

        // |
        System.out.println((a > b) | (a > c)); //false | false
        System.out.println((a < b) | (a > c)); //true | false
        System.out.println((a > b) | (a < c)); //false | true
        System.out.println((a < b) | (a < c)); //true | true
        System.out.println("--------------------");

        // ^
        System.out.println((a > b) ^ (a > c)); //false ^ false
        System.out.println((a < b) ^ (a > c)); //true ^ false
        System.out.println((a > b) ^ (a < c)); //false ^ true
        System.out.println((a < b) ^ (a < c)); //true ^ true
        System.out.println("--------------------");

        // ！
        System.out.println((a > b));
        System.out.println(!(a > b));
        System.out.println(!!(a > b));
        System.out.println("--------------------");
    }
}
