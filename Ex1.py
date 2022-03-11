#Nhập một dãy số nguyên từ bàn phím, và sắp xếp chúng theo thứ tự tăng dần.
import array as arr

a=[]
for i in range(1,7):
    a.append(int(input("Nhập phần tử cho dãy số: ")))
arr1=arr.array("i",a)
print("Dãy số ban đầu: ",a)
for i in range(len(arr1)):
    for j in range(i + 1, len(arr1)):
        if arr1[i] > arr1[j]:
            arr1[i], arr1[j] = arr1[j], arr1[i]
print("Dãy số đã sắp xếp tăng dần: ", arr1)


