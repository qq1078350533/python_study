from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

# 视图函数的第一个参数是HttpRequests类型的对象，里面包含了请求的所以参数
# 视图函数的返回值是HttpRequests 类型的对象，里面包含了响应的数据
def index(HttpRequest):
    return HttpResponse("index")
