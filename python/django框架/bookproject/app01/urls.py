#!/usr/bin/python3
# -*- coding:utf-8 -*-
"""
@author: snackdeng
@file: urls.py
@time: 2021-01-10 23:11
@desc: 
"""

from django.urls import path
from app01 import views

urlpatterns = [
    path("book_list/", views.book_list),
    path("edit_book/", views.edit_book),
    path("add_book/", views.add_book),
]