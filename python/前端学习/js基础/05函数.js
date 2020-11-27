function put() {
    console.log('打开冰箱门');
    console.log('把大象放进去');
    console.log('关上冰箱门');
}

function putAnything(something) {
    console.log('打开冰箱门');
    console.log('把' + something +'放进去');
    console.log('关上冰箱门');
}

function add(a,b) {
    return a + b;
}

function testNum(num) {
    if (num < 0) return;
    return num > 10;
}

//调用函数
// put();
// putAnything('snackdeng');
// var a = add(2 ,3);
// console.log(add(1,3))
// console.log(a)
//
// console.log(add(a,5));
//
// console.log(testNum(-5));
// console.log(testNum(15));

//函数表达式
console.log(add);
var plus = add;
var res = plus(5, 6);
console.log(res)

var multiply = function (a,b) {
    return a + b;
}

console.log(multiply(6,2))

// 函数和变量的提升
console.clear()
x = 5;
console.log(x);

console.log(divide(8,2))
function divide(a,b) {
    return a /b;
}

// 默认参数
console.clear()

function gree(name = 'snackdeng') {
    console.log('您好' + name);
}

gree();
gree('a');

function greetingwith(name = 'snackdeng', witha) {
    console.log('您好' + name +",今天天气是" + witha);
}

greetingwith(undefined,'大太阳');


// 递归
console.clear()

function sum(n) {
    if(n === 1){
        return 1;
    }
    return n + sum(n -1);
}
console.log(sum(100));

// 1 1 2 3 5 8 13 21 33 54 87
function fib(num) {
if (num <= 1){
    return 1;
}
return fib(num -1) + fib(num -2);
}

console.log(fib(3));

// arguments
console.clear()

function log() {
    for(let i = 0;i <arguments.length;i++){
        console.log(arguments[i]);  //取出参数第一个
    }
}

log('1112',332,22,'aa')