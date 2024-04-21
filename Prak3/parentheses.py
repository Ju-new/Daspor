open = ['(','[','{']
close = [')',']','}']
check = []
end = False
def get_index(x):
    for i in range(3):
        if open[i] == x:
            return i

data = input()
for i in range(0,len(data)):
    if data[i] in open:
        check.insert(0,close[get_index(data[i])])
    elif  len(check) != 0 :
        if (data[i] == check[0]):
            check.pop(0)    #benar
        else:
            print("tidak valid")
            end = True
            break
    else:
        print("tidak valid")
        end = True
        break
if not end:
    if check == []:
        print("valid")
    else:
        print("tidak valid")
