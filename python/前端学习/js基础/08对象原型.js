function emp(name,position) {
    this.name = name;
    this.position = position;
    this.sigion = function () {
        console.log(this.name + "ćĺĄ");
    };
}

var emp1 = new emp('s','s');
var emp2 = new emp('q','q');

console.log(emp1);
console.log(emp2);


console.log(emp.prototype);
emp.prototype.age = 20;

console.log(emp1.age);
console.log(emp2.age);

emp.prototype.printInfo = function() {
    console.log(this.name, this.age, this.position);
};

emp1.printInfo();
emp2.printInfo();

console.log(emp1.__proto__);
console.log(emp.prototype);
console.log(emp1.__proto__ === emp.prototype);

//原型链
var manager = Object.create(emp1);
console.clear();
var proto = Object.getPrototypeOf(manager);
console.log(proto);

// 修改原型指定
function Manager() {};
Manager.prototype.deparment = "技术部";
Object.setPrototypeOf(manager, Manager.prototype);

console.log(manager.deparment);
console.log(Object.getPrototypeOf(manager));

for (key in manager) {
    console.log(key);
};


console.clear()