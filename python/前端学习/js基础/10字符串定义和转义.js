var str = "hello";
console.log(str);

var str2 = new String("你好");
console.log(str2);

//转义字符
str = "他\t说： \n\"我们出去玩吧！\"";
console.log(str);

console.log("\u1010");

// 遍历
console.clear();
for(let i = 0; i < str.length; i++) {
    console.log(str.charAt(i));
}

for (let c of str) {
    console.log(c);
}


// 裁切
console.clear();
var str = "This is a string ...."
console.log(str.slice(0,4));
console.log(str.slice(4));
console.log(str.slice(0,-1));
console.log(str.slice(-6,-1));
console.log(str.slice(4,1));

// 不能接收负数
console.log(str.substring(0,4));
console.log(str.substring(4));
console.log(str.substring(0,-1));
console.log(str.substring(-3,-1));
console.log(str.substring(9,4));

//拼接
console.clear();
var str1 = 'sd';
var str2 = "sss";
console.log(str1 + str2);

//大小写
console.log(str1.toUpperCase()); // 全部大写
console.log(str1.toLocaleLowerCase()); // 全部小写

//去除空格
var str = "    sss sss sss   ";
console.log(str.trim()); // 去除前后空格

// 模板字符串
console.clear();

var longStr = `kjnkjaa
    ahdskad    
        oNotTrack;ldka
        adk;addEventListene ra;delete;a
        a   lsdl`;

console.log(longStr);

var name = "snackdeng";
var str = `您好, ${name}`;
console.log(str);

function greeting(string, gender){
    let genderStr = "";
    if(gender === "s") {
        genderStr = "deng";
    }else if (gender === "f"){
        genderStr = "zhu";
    }
    return `${string[0]}${genderStr}`;
}
var gender  = "s"
var result = greeting`你好，snackdeng${gender}`;
console.log(result);