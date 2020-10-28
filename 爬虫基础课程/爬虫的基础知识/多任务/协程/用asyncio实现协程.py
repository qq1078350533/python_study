import asyncio


@asyncio.coroutine
def func1():
    print(1)
    yield from asyncio.sleep(2)  # 遇到IO耗时操作，自动切换到tesks中的其他任务
    print(2)


@asyncio.coroutine
def func2():
    print(3)
    yield from asyncio.sleep(2)  # 遇到IO耗时操作，自动切换到tesks中的其他任务
    print(4)


tasks = [
    asyncio.ensure_future(func1()),
    asyncio.ensure_future(func2())
]
# 这是python3.5的做法
# # 去生成获取一个事件循环
# loop = asyncio.get_event_loop()
# # 将任务放到‘任务列表’
# loop.run_until_complete(asyncio.wait(tasks))

