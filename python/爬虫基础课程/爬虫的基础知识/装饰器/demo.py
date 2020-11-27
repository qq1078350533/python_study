import time
def display_time(func):
    def wrapper():
        t1 = time.time()
        result = func()
        t2 = time.time()
        print(t2-t1)
        return result
    return wrapper

def is_prime(num):
    if num < 2:
        return False
    elif num == 2:
        return True
    else:
        for i in range(2,num):
            return False
        return True

@display_time
def count_prime_num():
    count = 0
    for i in range(2,10000):
        if is_prime(i):
            count = count + 1
    return count

count = count_prime_num()
print(count)