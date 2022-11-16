txt = input("Input:")
separator = input("Separator:")
splitted = txt.split(separator)
count = 0
temp = splitted
for j in range(len(splitted)):
    temp[j] = 'placeholder'
    for k in range(len(splitted)):
        print(temp[k])
    temp[j] = splitted[j]
