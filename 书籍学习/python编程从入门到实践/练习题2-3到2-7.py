#2-3 个个性性化化消消息息： 将用户的姓名存到一个变量中，并向该用户显示一条消息。显示的消息应非常简单，如“Hello Eric, would you liketo learn some Python today?”。
print("Hello Eric, would you liketo learn some Python today?")


# 2-4 调整名字的大小写：： 将一个人名存储到一个变量中，再以小写、大写和首字母大写的方式显示这个人名。
a = "snackdeng"
print(a.lower())  # 小写
print(a.upper())  # 大写
print(a.title())  # 首字母大写
# 2-5 名言：： 找一句你钦佩的名人说的名言，将这个名人的姓名和他的名言打印出来。输出应类似于下面这样（包括引号）： Albert Einstein oncesaid,“Apersonwho never madea mistake never tried anything new.”
print('Albert Einstein oncesaid,“Apersonwho never madea mistake never tried anything new.”')
# 2-6 名言2： 重复练习2-5，但将名人的姓名存储在变量famous_person 中，再创建要显示的消息，并将其存储在变量message 中，然后打印这条消息。
famous_person = 'Albert Einstein oncesaid'
message = famous_person + ',' + '“Apersonwho never madea mistake never tried anything new.”'
print(message)
# 2-7 剔除人名中的空白：： 存储一个人名，并在其开头和末尾都包含一些空白字符。务必至少使用字符组合"\t" 和"\n" 各一次。 打印这个人名，以显示其开头和末尾的空白。然后，分别使用剔除函数lstrip() 、rstrip() 和strip() 对人名进行处理，并将结果打印出来。
# name = '\tsnackdeng'
# print(name.lstrip())
name = 'snackdeng  '
print(name.rstrip())
name = "   snackdeng  "
print(name.strip())
