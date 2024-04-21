a =int(input())
mylst = []
while a >= 0 and len(mylst<100):
    mylst.append(a)
    a = int(input())

angka = [i for i in range(10)]
count = [0 for i in range(10)]

for i in mylst:
    temp = i
    while temp >= 10:
        digit = temp % 10
        temp = (temp-temp%10) // 10

        count[digit] += 1
    count[temp] += 1
print(len(mylst))
for i in angka:
    if count[i] != 0:
        print(i, ":", count[i],sep=" ")