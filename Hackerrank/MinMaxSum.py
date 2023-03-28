def miniMaxSum(arr):
    max_value = max(arr)
    min_value = min(arr)
    total = 0
    for i in arr:
        total += i
    print(total-max_value, total-min_value)

print(miniMaxSum([1, 2 ,3 ,4, 5]))