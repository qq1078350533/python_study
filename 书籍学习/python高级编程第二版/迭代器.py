class CountDown:
    def __init__(self,step):
        self.step = step

    def __next__(self):
        if self.step <= 0:
            raise StopAsyncIteration
        self.step -= 1
        return self.step

    def __iter__(self):
        return self


for element in CountDown(4):
    print(element)