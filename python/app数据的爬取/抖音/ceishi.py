import re

str = 'sdsfsdf:::抖音dsa'
pattern = re.compile('[0-9]+')
match = pattern.findall(str)
if match:
    print ('包含数字')
else:
    print ('不包含数字')