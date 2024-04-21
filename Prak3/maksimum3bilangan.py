#Input
k = 3
data = [0 for i in range(k)]
for i in range(k):
    data[i] = int(input())
max = data[0]
for i in range(k):
    if data[i]> max:
        max = data[i]

print(max)