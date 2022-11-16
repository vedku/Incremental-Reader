import time

txt = input("Input:")
separator = input("Separator:")
splitted = txt.split(separator)
count = 0
temp = [splitted[0],splitted[1],splitted[2]]
for j in range(len(splitted)):
   if j == 0:
        temp[0] = 'XXX'
        print(temp)
        time.sleep(4)
   elif j == 1:
       temp[1] = 'XXX'
       print(temp)
       time.sleep(4)
   elif j == 2:
       temp[2] = 'XXX'
       print(temp)
   temp = [splitted[0], splitted[1], splitted[2]]
