/*
    标识符：就是用来给包，类，方法，变量等起名字的字符

    组成规则：
        A:unicode字符
            数字字符，英文大小写字母，汉字（不建议使用汉字）
        B:下划线 _
        C:美元符 $

    注意事项
        A:不能以数字开头

    常见命名规则：
        A:基本要求
            见命知意
       B:常见命名
            a:包（其实就是文件夹，对于类进行管理）
                全是小写，多级包，隔开
                举例：com,com.itheima
           b:类
                一个单词首字母大写
                    举例：Student，Car
                多个单词每个字母的首字母大写
                    距离：HelloWorld
           c:方法和变量
                一个单词首字母小写
                    举例：age，show（）
               多个单词组成从第二个单词开始每个单词的首字母大写
                    举例：maxAge，getAge()
* */
public class BiaoZhiFu {
    public static void main(String[] args) {
        // 数据类型 变量名 = 初始化量；
        int a = 10;

        int b2 = 20;
        // 错误示范
//        int 2b = 30;
        // 错误示范
//        int class = 200;
    }
}
