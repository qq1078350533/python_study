const generator = require("@babel/generator").default;   // AST --> 代码
const {parse} = require("@babel/parser");    //js代码 --> AST
const traverse = require("@babel/traverse").default;   //可以用来遍历更新@babel/parser生成的AST
const t = require("@babel/types");    // 工具类，主要用途是在创建AST的过程中判断各种语法的类型
const fs = require('fs');   // 引入fs nodejs模块——fs模块：fs模块用于对系统文件及目录进行读写操作。

// 读取jscode.js文件内容
let jscode = fs.readFileSync("./jscode.js", {
    encoding: "utf-8"
});

// 将jscode内容转换成AST抽象语法树
let ast = parse(jscode);

const visitor =
    {

        CallExpression(path) {
            if (!t.isIdentifier(path.node.callee)
                || path.node.callee.name !== 'decodeURIComponent'
            ) {
                // 需要是调用 decodeURIComponent函数
                return;
            }
            if (path.node.arguments.length !== 1) {
                return;
            }
            let decodeArg = path.node.arguments[0];
            if (!t.isLiteral(decodeArg)) {
                //参数需要是常量
                return;
            }
            let replace = eval(path.toString());
            path.replaceWith(t.stringLiteral(replace));

            //触发父节点的树重新遍历
            path.parentPath.visit();
        },
        BinaryExpression(path) {
            if (!t.isLiteral(path.node.left)
                || !t.isLiteral(path.node.right)
            ) {
                return;
            }
            let replace = eval(path.toString());
            path.replaceWith(t.stringLiteral(replace));
        }

    };

traverse(ast, visitor);

// AST --> 代码
let {code} = generator(ast);

fs.writeFile('decode.js', code, (err) => {
});