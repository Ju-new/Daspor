data= int(input())
neg = False
hasil = 0
if data < 0:
    data= (-1) * data
    neg = True

while data >0:
    hasil = hasil*10 + (data%10)
    data = int((data - (data%10))/10)

print(-hasil if neg else hasil) #output

#selesai
