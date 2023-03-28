def plusMinus(arr):
    positive = 0 
    negative = 0
    cero = 0
    n_elements = len(arr)
    for i in arr:
        if i > 0:
            positive += 1
        elif i < 0:
            negative += 1
        else:
            cero += 1 
    print("{:.6f}".format(positive/n_elements))
    print("{:.6f}".format(negative/n_elements))
    print("{:.6f}".format(cero/n_elements))

plusMinus([-4, 3, -9, 0, 4, 1])