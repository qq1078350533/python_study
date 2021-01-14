// 下载  npm install @babel/core

const fs = require('fs');
const {parse} = require("@babel/parser");
const traverse = require("@babel/traverse").default;
const t = require("@babel/types");
const generator = require("@babel/generator").default;


let jscode = fs.readFileSync("./内容.js", {
    encoding: "utf-8"
});
let ast = parse(jscode);

const visitor =
{
  //TODO  write your code here！
    "Identifier|BinaryExpression"(path) {
        let {confident, value} = path.evaluate();
        console.log(path.type, confident, value)
        if (confident) {
            console.log(path.node);
            path.replaceInline(t.valueToNode(value))
        }
    },
}

//some function code

traverse(ast,visitor);
let {code} = generator(ast);
fs.writeFile('decode.js', code, (err)=>{});