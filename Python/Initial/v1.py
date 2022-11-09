def split(x):
  separator = input("What separator do you want do split the text by? (period, comma, etc) \nInput separator here:")
  return x.split(separator)
txt = input("Input the text to be split:")
splitted = split(txt)
print(splitted)
