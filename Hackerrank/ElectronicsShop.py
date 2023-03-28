def getMoneySpent(keyboards, drives, b):
    max = 0
    for i in keyboards:
        for j in drives:
            if i+j <= b and i+j>max:
                max = i+j
    return max