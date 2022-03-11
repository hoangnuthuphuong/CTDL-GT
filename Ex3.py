# Xây dựng lớp Stack
class Stack:
    # Hàm khởi tạo
    def __init__(self):
        self.s = []

    # Hàm bổ sung thêm một phần tử x vào đỉnh của Ngăn xếp S.
    def push(self, x):
        self.s.append(x)

    # Hàm loại bỏ và trả về giá trị của phần tử đỉnh của Ngăn xếp S.
    # Nếu S rỗng thì trả về thông báo Ngăn xếp rỗng.
    def pop(self):
        if len(self.s) == 0:
            return "stack is empty"
        return self.s.pop()

    # Hàm kiểm tra ngăn xếp rỗng
    #Trả về giá trị True nếu S không chứa phần tử nào.
    def is_empty(self):
        return len(self.s) == 0

    # Trả về giá trị của phần tử đỉnh Ngăn xếp, nhưng không loại bỏ phần tử này.
    # Nếu S rỗng thì trả về thông báo Ngăn xếp rỗng.
    def top(self):
        if len(self.s) == 0:
            return "stack is empty"
        return self.s[-1]

    # Hàm trả về số lượng các phần tử trong Ngăn xếp S.
    def __len__(self):
        return len(self.s)


    # Hàm hiển thị các phần tử trong ngăn xếp S.
    def __str__(self):
        return "Stack is " + str(self.s)

# Hàm main
if __name__ == "__main__":
    # Khai báo đối tượng
    S = Stack()

