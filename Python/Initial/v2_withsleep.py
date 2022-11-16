import time
txt = input("Input:")
splitted = txt.split()
for i in range(len(splitted)):
    print(splitted[i])
    time.sleep(2)
