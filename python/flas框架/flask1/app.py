from flask import Flask
from flask import request
from flask import render_template

import setting

app = Flask(__name__)
app.config.from_object(setting)


@app.route('/<wqee>')
def hello_world(wqee):
    return 'Hello World!' + wqee

@app.route('/ajax',methods=["get","post"])
def hello_world4():
    name = request.values.get("name")
    score = request.values.get("score")
    print(f"name:{name},score:{score}")
    return '10000'

@app.route('/tem')
def hello_world3():
    return render_template("index.html")

@app.route('/login')
def hello_world2():
    name = request.values.get("name")
    pwd = request.values.get("pwd")
    return f"name={name},pwd={pwd}"

@app.route('/abc')
def hello_world1():
    id = request.values.get("id")
    return f"""
    <form action="/login">
        账号:<input name="name" value="{id}"><br>
        密码:<input name="pwd">
        <input type="submit">
    </form>
    """

if __name__ == '__main__':
    app.run(port=8080)
