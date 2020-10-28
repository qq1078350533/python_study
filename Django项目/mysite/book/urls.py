# -*- coding:utf-8 -*-
"""
作者：snackdeng
日期：2020/07/31
"""
from django.conf.urls import url
from book.views import index
urlpatterns = [
    url(r'^index/',index)
]