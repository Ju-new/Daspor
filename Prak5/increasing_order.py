#definisi
def geser_kanan(arr):
    arr2 = arr
    last = arr[-1]
    arr2 = arr2[0:-1]
    arr2.insert(0,last)
    return arr2

def naik_terus(arr):
    for i in range(0,len(arr)-1):
        if arr[i] > arr[i+1]:
            return False
    return True


n = int(input())
a = list(map(int, input().strip().split()))
hasil = a
count = 0

bisa = True
while not naik_terus(hasil):
    hasil = geser_kanan(hasil)
    count += 1

    #cek jika kembali ke awal
    if hasil == a:
        bisa = False
        break
if bisa:
    print(count)
else:
    print("Tidak")