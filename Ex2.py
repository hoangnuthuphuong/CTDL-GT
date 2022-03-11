#Nhập một dãy số nguyên từ bàn phím, và cho biết số lần xuất hiện của từng số trong dãy số
import array as arr
a=[]
for i in range(1,16):
    a.append(int(input("Nhập phần tử cho dãy số: ")))
arr2=arr.array("i",a)
print("Dãy số ban đầu: ",a)
n=dict()

for i in arr2:
    if i in n:
        n[i]+=1
    else:
        n[i]=1
print("Phần tử tương ứng với số lần xuất hiện",n)



