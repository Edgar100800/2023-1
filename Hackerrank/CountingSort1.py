def countingSort(arr):
    my_list = [0] * 100
    for i in arr:
        my_list[i] += 1
    return(my_list)
print(countingSort([1,1,3,2,1]))


