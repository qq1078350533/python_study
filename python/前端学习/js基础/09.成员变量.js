class Employe {
    depy = "";
    constructor(name) {
        this.name = "员工姓名:" + name;
    }
}

var emp = new Employe();
console.log(emp);
emp.depy = "技术部";
console.log(emp);

class Page {
    // 静态方法
    static count = 0;
    static inc() {
        Page.count++;
    }
}

Page.count++;
console.log(Page.count);
Page.inc();
console.log(Page.count);