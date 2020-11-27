var x = 5;

function add(a) {
    var y = 10;
    console.log('y='+y);
    return a + x;
}

console.log(add(7));
x = 20;
console.log(add(7));

var num = 1000;
function mul(num) {
    return num * 10;
}
console.log(mul(4))


// var 与 let
console.clear()
var z = 7;
if (z > 2){
    console.log(z);
    var inner = 17;
}
// if (z > 2){
//     console.log(z);
//     let inner = 17;
// }

console.log(inner)

for (var i = 0;i <10;i ++){
    console.log(i);
    var inner = 33;
}
// for (var i = 0;i <10;i ++){
//     console.log(i);
//     let inner = 33;
// }

console.log(i);
console.log(inner);


// 箭头函数
console.clear()
// var greeting = () => {
//     console.log('hello');
// };
// var greeting = name => {
//     console.log('hello' + name);
// };
var greeting = (name, weather)=> {
    console.log('hello' + name + '今天提取' + weather);
};

greeting('snackdeng','大太阳');
var increment = x => x +1;
console.log(increment(8));


//数组的裁切
console.clear()
var arr = [1, 2, 3, 4, 5]
console.log(arr.slice(1,-1))