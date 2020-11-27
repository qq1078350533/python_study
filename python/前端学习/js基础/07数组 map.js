// map 数组
var arr = [1,2,3,4];
var mappedArr = arr.map(ele => ele * 2);
console.log(mappedArr);

// reduce 数组
console.clear();
var arr = [1,2,3,4];
var result = arr.reduce((previousValue, currentValue) => previousValue + currentValue, 0);
console.log(result);


// 数组过滤
console.clear()
var arr = [1,2,3,4,5,6,7,8];
var filt= arr.filter(item => item > 4);
console.log(filt)

//数组测试
console.clear()
var arr = [1,2,3,4,5,6];
var result = arr.every(item => item > 2);  //都满足即返回true 否则false
console.log(result);

var res = arr.some(item => item >5);  //是否有一个满足
console.log(res)

// destructuring 操作符
console.clear()
var arr = [1,2,3];
var [a,b,c] = arr;
console.log(a,b,c);

var [d,e] = arr;
console.log(d,e);

var [,g] = arr;
console.log(g);

function mul() {
    let name = 'snackdeng';
    let position = '爬虫工程师';

    return [name, position];
}

var [myNmae, myps] = mul();
console.log(myNmae,myps);

//rest 操作符
var arr = [1,2,3,4,5,6,7,8];
var [a, b, ...rest] = arr;
console.log(a, b, rest);

// 多维数组
console.clear()
var arr = [];
for (let i = 0; i < 5; i++) {
    arr[i] = [];
    for (let j = 0; j <4; j++){
        arr[i][j] = i + j;
    }
}

console.log(arr);