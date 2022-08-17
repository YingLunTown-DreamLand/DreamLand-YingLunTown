out=['+','-']
text=input()
text=text.replace(' ','')
for i in out:
    if i == '+':
        text=text.replace(i,' + ')
        continue
    if i == '-':
        text=text.replace(i,' - ')
        continue
text=text.split(' ')
new=[]
for i in text:
    if i != '':
        new.append(i)
print(new)