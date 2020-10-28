def sun_numbers(num):

    if num == 1:
        return 1
    nub =sun_numbers(num - 1)
    return num + nub


print(sun_numbers(3))