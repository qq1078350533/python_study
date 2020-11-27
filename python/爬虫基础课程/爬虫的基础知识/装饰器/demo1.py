# import time
#
#
# def timer(func):
#     def wrapper():
#         startTime = time.time()
#         func()
#         stopTime = time.time()
#         print('函数运行了 {} 秒'.format(stopTime - startTime))
#     return wrapper
#
#
# @timer
# def iCanSleep():
#     time.sleep(3)
#
#
# iCanSleep()


def tips(func):
    def nei(a, b):
        print('start')
        func(a, b)
        print('stop')
    return nei


@tips
def add(a, b):
    print(a + b)


print(add(1,3))