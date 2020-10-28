"""logindemo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.shortcuts import render,HttpResponse


def login(request):
    print(request, type(request))
    print(request.method,type(request.method))
    if request.method == 'POST':
        # 处理post逻辑
        # 获取到用户提交的用户名密码
        print(request.POST, type(request.POST))
        print(request.POST['user'], type(request.POST['user']))
        print(request.POST['pwd'], type(request.POST['pwd']))
        user = request.POST['user']
        pwd = request.POST['pwd']
        # 校验
        if user == 'snackdeng' and pwd == '111111':
        # 校验成功 告诉登陆成功
            return HttpResponse('登陆成功')
        # 失败 返回登陆页面

    return render(request, 'login.html')

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^login/', login),
]
