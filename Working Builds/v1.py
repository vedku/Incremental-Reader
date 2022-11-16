import time
txt = input("Input:")
separator = input("Separator:")
splitted = txt.split(separator)
for i in range(len(splitted)):
    print(splitted[i])
    time.sleep(4)
