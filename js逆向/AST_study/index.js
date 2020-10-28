const generator = require("@babel/generator");
const parser = require("@babel/parser");
const traverse = require("@babel/traverse");
const types = require("@babel/types");

function compile(code) {
    //1.parser 解析
    const ast = parser.parse(code);
    //2.traverse 遍历

    //3.generator
    return generator.default(ast, {}, code);
}

const code = function foo() {
    console.log('bar');
};

const result = compile(code);
console.log(result.code);