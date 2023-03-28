def diagonalDifference(arr):
    counter = 0
    first_diagonal = 0
    second_diagonal = 0
    for i in arr:
        # print(i[counter])
        first_diagonal += i[counter]
        counter += 1
    counter -= 1
    for i in arr:
        # print(i[counter])
        second_diagonal += i[counter]
        counter -= 1
    return(abs(first_diagonal-second_diagonal))

print(diagonalDifference([[1,2,3],[4,5,6],[9,8,9]]))