
data = {"url":"https://sso.toutiao.com/toutiao/account_login/?mobile=&code=&account=13347878796&password=1234567890&captcha=euuu&is_30_days_no_login=false&service=https%3A%2F%2Fwww.wukong.com%2Fwenda%2Fwelcome%2F"}
a = require('./test01.js');
n = a.sign;
console.log(n.call(a,data));