txt = input("Input:")
separator = input("Separator:")
splitted = txt.split(separator)
count = 0
for j in range(len(splitted)):
   temp = [splitted[0],splitted[1],splitted[2]]
   if j == 0:
        temp.pop(0)
        temp.append("John Paul Jones")
        print(temp)
