with open('pi_digits') as a:
    lines = a.readlines()
    print(lines)
b = ""
for line in lines:
    b += line.strip()
print(len(b))
print(b)