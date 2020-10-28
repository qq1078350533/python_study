from django.db import models

# Create your models here.
'''
类 - 数据库表
类的属性 - 数据库表中的字段
'''
class BookInfo(models.Model):
    # id会自动创建
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class PeopleInfo(models.Model):
    name = models.CharField(max_length=20)
    gender = models.BooleanField()
    book = models.ForeignKey(BookInfo)

    def __str__(self):
        return self.name

