dic = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
rom = input()
hasil = 0
i = 0
for i in range(len(rom)):
    if i+1 < len(rom) and dic[rom[i]] < dic[rom[i+1]]: #tidak "IV" dan diujung
        hasil -= dic[rom[i]]
    else:
        hasil += dic[rom[i]]
print(hasil)