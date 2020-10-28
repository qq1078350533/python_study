a = {'a':["aaa",5],'b':['bbb',3],'c':['ccc',9],'d':['ddd',2]}
f = sorted(a.items(),key=lambda x:x[-1][-1],reverse=True)
# print(f)

def cop(x):
    return x[-1][-1]

for i in a.items():
    print(cop(i))