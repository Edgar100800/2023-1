def flippingMatrix(matrix):
    order_list = []
    square_size = len(matrix)/2
    for i,x in enumerate(matrix):
        for j,y in enumerate(x):
            order_list.append([y,i,j])
    order_list.sort()
    # print(order_list[-4:])
    top4 = order_list[int(-(len(matrix)/2*len(matrix)/2)):]
    print(top4)
    for i in top4:
        while (i[1]>=square_size or i[2]>=square_size):
            if i[1]>=square_size:
                matrix[i[1]] , matrix[i[1]-1] = matrix[i[1]-1], matrix[i[1]]
                i[1] -= 1
                # print(matrix)
            elif i[2]>=square_size:
                for j in matrix:
                    j[i[2]], j[i[2]-1] = j[i[2]-1], j[i[2]]
                    i[2] -= 1
                # print(matrix)

        # while (i[1]!=0 or i[2]!=0):
        #     if i[1]!=0:
        #         matrix[i[1]] , matrix[i[1]-1] = matrix[i[1]-1], matrix[i[1]]
        #         i[1] -= 1
        #         # print(matrix)
        #     elif i[2]!=0:
        #         for j in matrix:
        #             j[i[2]], j[i[2]-1] = j[i[2]-1], j[i[2]]
        #             i[2] -= 1
        #         print(matrix)
    return(matrix)

print(flippingMatrix([[112,42,83,119],[56,125,56,49],[15,78,101,43],[62,98,114,108]]))

