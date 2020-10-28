from flask import Flask,render_template

app = Flask(__name__)

# 默认get请求，其他得指定
@app.route('/',methods=['GET','POST'])
def hello_world():
    return 'Hello World!'


if __name__ == '__main__':
    app.run()
