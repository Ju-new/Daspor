count = 0
bil = 1
baris = [i for i in range(10)]
jumlah_digit = [0 for i in range(10)]
while count < 100:
    bil = int(input())
    
    if bil<0:
        break

    while bil >=10:
        index = bil % 10
        jumlah_digit[index] += 1
        bil = int((bil - bil%10)/10)
    jumlah_digit[bil] += 1
    count += 1
print(count)
for i in range(10):
    if jumlah_digit[i] == 0:
        continue
    else:
        print(baris[i],":", jumlah_digit[i])