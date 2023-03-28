def formingMagicSquare(s):
    magic_squares = [[[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]]]
    # cost = 0
    min_cost = 1000
    best_square = 0
    # print(magic_squares[0][1][0])
    for h,i in enumerate(magic_squares):
        cost = 0
        for j in range(3):
            for k in range(3):
                cost += abs(i[j][k] - s[j][k])
                # print(i[j][k])
        if cost < min_cost:
            min_cost = cost
            best_square = h
        # print(i)
    print("best square ",h)
    return min_cost

print(formingMagicSquare([[4, 8, 2], [4, 5, 7], [6, 1, 6]]))