import pandas as pd
df = pd.DataFrame({'id':[1,2,3],'name':['tim','vivtib','ashasb']})
df = df.set_index('id')
print(df)
df.to_excel('1.xlsx')
print('1')