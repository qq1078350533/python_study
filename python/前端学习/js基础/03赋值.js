var x = 10;
var y = x;

console.log(x,y);

console.clear();

var negativeNum = -5;
console.log(negativeNum);

// 将字符串类型改为了数字类型
var strNum  = +'3';
console.log(strNum,typeof strNum);

var num = 8;
console.log(num++);  //先打印8 在执行加1操作
console.log(num);  // 打印结果为9
console.log(++num); // 先加1 ，在打印结果为10

console.log(num--);
console.log(num);
console.log(--num); //同上

// 算术操作符
console.clear();
console.log('1+5=', 1+5);
console.log('5-1=', 5-1);
console.log('5*2=', 5*2);
console.log('5/1=', 5/1);
console.log('5%1=', 5%1); //取余数
console.log('5**2=', 5**2); //指数

//比较操作符
console.clear();
console.log('1>5', 1>5);
console.log('1>=5', 1>=5);
console.log('5>=5', 5>=5);
console.log('5==5', 5==5);
console.log('5=="5"', 5=="5"); //先会统一类型在进行比较
console.log('5==="5"', 5==="5"); //先比较类型在比较大小
console.log('5===5', 5===5); //先比较类型在比较大小

console.log('undefined == null', undefined == null);
console.log('undefined === null', undefined === null);

// 逻辑操作符 false 0 '' null undefined都是假值
console.clear();
console.log('true && true', true && true); //与
console.log('true && false', true && false);
console.log('true || false', true || false); //或
console.log('!true', !true);  //非

console.log("true && 'hello'", true && "hello");// 前面为真则执行后面的代码
console.log("false && 'hello'", false && "hello");// 前面为假则不执行后面的代码
console.log("false || 'hello'", false || "hello");// 前面为假则执行后面的代码

var a = null;
b = 5 || a;
console.log(b);
console.log('fales && "not printed"', "not printed" && 1); //与 全真才为真，谁在后输出谁，有假全为假，谁假输出谁
console.log('true || "not printed"', 0 || false); //或 有真则为真,谁真输出谁，若两个都为真，谁先输出谁，都为假，谁后输出谁
console.log(4);
console.log(!!4);
console.log(!0);

// 位运算符 5 101
//      ; 3 011
console.clear()
console.log('5 & 3',5 & 3); //结果为 001 位数相同为1，不相同为0
console.log('5 | 3',5 | 3); //结果为 111 位数有1则返回1，全为0则返回0
console.log('5 ^ 3',5 ^ 3); //结果为110  位数相同则返回0，不相同则返回1
console.log('~5',~80); //对101取反 结果为加1取反
console.log('5 << 1',5 << 1); //左移一位最右边加0 1010   2**3+2=10
console.log('5 >> 1',5 >> 1);//右移一位去掉最右边一位  10     2 = 2
console.log('-5 >>> 1',-5 >>> 1);//右移一位去掉最右边一位  10     2 = 2

// 三目运算符
console.clear();

var temperature = 10;
console.log(temperature >15 ? '出门' : '在家') //'出门' : '在家' 等价于 真：假 10小于15，即为假输出在家