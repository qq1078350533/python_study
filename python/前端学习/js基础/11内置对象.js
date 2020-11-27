// 内置对象 Number
var strNum = "15";
var num = Number.parseInt(strNum);

console.log(strNum);
console.log(num);
console.log(typeof num);

var strNum = "12.34";
var num = parseFloat(strNum);
console.log(typeof num);

var strNum = "abc";
var num = parseInt(strNum);
console.log(isNaN(num));

var num = 12.33453;
var numstr =  num.toFixed(2);
console.log(numstr);

console.log(Number.MAX_SAFE_INTEGER);
console.log(Number.NEGATIVE_INFINITY);


// Math
console.clear();
console.log(Math.PI);
console.log(Math.abs(-6));
console.log(Math.sin(Math.PI / 2));
console.log(Math.floor(3.96));  //向下取整
console.log(Math.ceil(3.96));  //向上取整
console.log(Math.pow(10, 4));
console.log(Math.trunc(2.42424));
console.log(Math.random());

// Date
console.clear();
var date = new Date();
console.log(date);
console.log(date.getFullYear()); // 返回年份
console.log(date.getMonth()); // 返回月份
console.log(date.getDay());  // 返回是周几
console.log(date.getDate()); // 返回几号
console.log(date.getHours()); // 几点
console.log(date.getMinutes()); // 几分
console.log(date.getSeconds()); //几秒
console.log(date.getTime()); //时间戳
console.log(date.toLocaleDateString()); //  年/月/日

date.setFullYear(2022);
console.log(date.toLocaleDateString());


// JSON
console.clear();

var postJSON =  `{
    "id" :1,
    "title" : "标题",
    "comments" : [
        {
            "userid" : 1,
            "comment" : "评论1"
        },{
            "userid" : 2,
            "comment" : "评论2"
        }
    ],
    "published" : true,
    "author" : null
}`;

console.log(JSON.parse(postJSON));

var person = {
    id : 1,
    name : "snackdeng",
    skills:["react", "python"]
};

console.log(person);
console.log(JSON.stringify(person, null, 2));


// Set
console.clear();
var set = new Set();
set.add(1);
set.add(3);

console.log(set);

//Map
console.clear();
var map = new Map();