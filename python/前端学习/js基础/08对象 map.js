// 创建对象
var employe = {
    name : 'snackdeng',
    age : 20,
    position: '爬虫工程师',
    sigin:function () {
        console.log('打卡');
    }
};

var employee2 = new Object();
employe.name = '李四';
employee2.sigin = function () {
    console.log('打卡');
};

// 对象属性
console.log(employe.name);
console.log(employe["name"]);

employe.name = "lisi";
console.log(employe.name);
employe["name"] = '77';
console.log(employe.name);

console.log(employee2.age);
employee2.age = 22;
console.log(employee2.age);

var employee3 = {
    name : '五五',
    'pirth-date' : '1990-06-02',
};
console.log(employee3["pirth-date"]);

// 省略 key
console.clear()
var name = 'snackdeng';
var employee4 = {
    name : name,
    signIn() {
        console.log('李四打卡');
    }
};

console.log(employee4.name);
console.log(employee4.signIn());

// 遍历对象属性
console.clear()
console.log(Object.keys(employe));

for(key in employe) {
    console.log(key);
}

//删除对象的属性
delete employe.name;
console.log(employe);
console.log(Object.keys(employe));

//构造函数
console.clear()
function Employe(name, position) {
    this.name = name;
    this.positon = position;
}

var emp1 = new Employe("snckdeng",'爬虫工程师')
console.log(emp1);

//this
console.clear()
var emp3 = {
    name : "李四",
    position : "爬虫工程师",
    signIn(){
        console.log(this.name + "上班打卡");

    }
};
emp3.signIn();

emp3.goTowork = function () {
    console.log(this.name + "去上班");
};
emp3.goTowork();

// getters 和 setters
console.clear();
var person = {
    firstname : '3',
    lastname: "li",
    get fullName() {
        return this.lastname + this.firstname;
    },
    set fullName(fullName) {
        let [lastname,firstname] = fullName.split(',');
        this.firstname = firstname;
        this.lastname = lastname;
    }
};

console.log(person.fullName);
person.fullName = "李,四";
console.log(person.fullName);
console.log(person.lastname, person.firstname);

function Employee2(name, position) {
    this.name = name;
    this.position = position;
}

var emp5 = new Employee2("赵六",'爬虫工程师');
Object.defineProperty(emp5, "info",{
    get function() {
        return this.name + " " + this.position;
    },
    set: function (info) {
        let [name, position] = info.split(" ");
        this.name = name;
        this.position = position;
    }
});
console.log(emp5.info);
emp5.info = "赵七 爬虫";
console.log(emp5.name);
console.log(emp5.position);