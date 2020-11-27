{
    var name = 'snackdeng';
    console.log(name);

    let age = 15; //不能被语句块外面调用
    console.log(age)

    const YEAR = 1010;
    console.log(YEAR) //不能被语句块外面调用
}


console.log(name);
// console.log(YEAR);

//if  else
console.clear()
// var passcode = prompt('请输入暗号');
// if(passcode === 'snackdeng') {
//     alert('登陆成功');
// }else {
//     alert('登陆失败');
// }


// if else  if else
// var role = prompt('请输入权限');
// if(role === 'a'){
//     alert('大佬');
// }else if(role==='b'){
//     alert('菜鸟');
// }else {
//     alert('什么也不是');
// }

// switch case
// var role = prompt('请输入权限');
// switch (role) {
//     case 'a': //为a就弹出大佬
//         alert('大佬');
//         break;
//     case 'b':
//         alert('菜鸟');
//         break;
//     case 'c':
//         alert('什么也不是');
//         break;
//     case 'd':
//         alert("???");
//         break;
//     default:  //都不满足就执行这个语句
//         alert('不是地球人');
// }

// while 循环
// var password = "";
// while (password !== '123456'){
//     password = prompt('请输入密码');
// }
//
// console.log("登录成功");

// do while
// var x = 5;
// do {
//     console.log(x++);
// }while (x > 5 && x <= 10)

// for 循环
// for (let i = 0; i < 10; i+=2){
//     console.log(i);
// }

// for (;;){
//     console.log('true')
// }

// var j = 0;
// while (j < 10){
//     console.log(j);
//     j ++;
// }

// break 即当条件满足就停止循环 和 continue 即当条件满足就跳过这一循环
for (let i = 0; i <10;i++){
    if (i === 6){
        continue;
    }
    console.log(i)
}