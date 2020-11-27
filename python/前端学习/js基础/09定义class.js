class Employe {
    constructor(name, position) {
        this.name = name;
        this.position = position;;
    }

    signin() {
        console.log(this.name + "打卡上班");
    }

    get info(){
        return this.name + " " + this.position;
    }

    set info(info) {
        let [name, position] = info.split(" ");
        this.name = name;
        this.position = position;
    }
}

var emp = new Employe('snackdeng','爬虫工程师');
console.log(emp);
emp.signin();
console.log(emp.position);
console.log(emp.info);
emp.info = "李四 后端";
console.log(emp.info);
console.log(emp.name, emp.position);

// 继承
class manger extends Employe{
    constructor(name, position, dept) {
        super(name, position);
        this.dept = dept;
    }

    signin() {
        super.signin();
        console.log('额外信息：经理打卡');
    }
}

var man = new manger('王五', '经理');
console.log(man);
man.signin();

// man.dept = "技术部";
// console.log(man);