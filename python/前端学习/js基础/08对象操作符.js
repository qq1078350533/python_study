//spread 操作符 ...
var post = {
    id : 1,
    title: '标题1',
    content:'这是内容'
};

console.log(post);

var postclone = {...post};
console.log(postclone);
console.log(post === postclone);

var post2 = {
    ...post,
    author:'snckdeng'
};

console.log(post2);

var arr = [1, 2, 3];
var arrclone = [...arr];

console.log(arrclone);
var arr2 = [...arr, 4 ,5 ,6];
console.log(arr2)

function savepost(id, title, content) {
    console.log('保存了文章：' , id, title, content);
}

savepost(...[2,"标题", '内容内容']);

//destructuring & rest
console.clear();
var post = {
    id : 1,
    title: '标题1',
    content:'这是内容'
};

var {id , title} = post;
console.log(id, title);

var {id, title:headline} = post;
console.log(id, headline);

var {id, title ,comments = "没有评论"} = post;
console.log(comments);

var [a,b=2] = [1];
console.log(a,b);

var post2 = {
    id :2,
    title:"标题2",
    content:'这是内容',
    comments:[
        {
            userID:1,
            comment:'评论1'
        },{
            userID:2,
            comment:'评论2'
        },{
            userID:3,
            comment:'评论3'
        }
    ]
};

var {comments:[,{comment}]} = post2;
console.log(comment);

function getId(idkey, obj) {
    let { [idkey]: id } = obj;
    return id;
}
console.log(getId("userId", { userId: 3 }));


var {comments, ...rest} = post2;
console.log(rest);

function savePostObj({id, title, content}) {
    console.log('保存了文章',id,title,content);
    console.log(rest);
}

savePostObj({id: 4,title:'标题4', content:'内容4', author:'d'});


// 值传递与引用传递
console.clear();

var array = [1,2,3];
function byreference(arr) {
    arr[0] = 5;
}
byreference(array);
console.log(array);

function byreferenceobj(obj) {
    obj.title = "标题标题";
}
var post = {id: 1, title : "标题"}
byreferenceobj(post);
console.log(post);

function byreferencestr(str) {
    str = "abc"
}

var teststr = 'test';
byreferencestr(teststr);
console.log(teststr);

//call apply 与bind
console.clear();
var emp = {
    id : 1,
    name:"snackdeng"
};

function printInfo(dep1, dep2, dep3) {
    console.log("员工姓名" + this.name, dep1, dep2, dep3);
}

printInfo.call(emp, "技术部", "it事件部", "总裁办公室");
printInfo.apply(emp, ["技术部", "it事件部", "总裁办公室"]);
console.clear();

var em = printInfo.bind(emp, ["技术部", "it事件部", "总裁办公室"]);
console.log(em);