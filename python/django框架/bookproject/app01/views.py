from django.shortcuts import render

# Create your views here.
def book_list(request):
    dic = {
        "id": 1,
        "book_id": 23,
        "book_name": "Pythn编程",
        "publisher_name": "人民日报出版社",
        "publisher_address": "北京海定区",
    }
    return render(request,"book_list.html", {"dic": dic})

def edit_book(request):
    return render(request, "edit_book.html")


def add_book(request):
    return render(request, "add_book.html")