a = input()
opening = ['(','[','{']
closing = [')',']','}']
pair = {'(':')','[':']','{':'}'}
start= []
end = []

hasil = True

for i in a:
    if i in opening:
        start.append(i)
        end.append(pair[i])
    else:   #closing
        if end == []:
            hasil = False
            break
        if i != end[-1]:
            hasil = False
            break
        else:
            end.pop(-1)

if hasil == True and end == []:
    print("valid")
else:
    print("tidak valid")
        
