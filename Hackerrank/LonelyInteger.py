def lonelyinteger(a):
    number_list = {}
    for i in a:
        if i in number_list:
            number_list[i] += 1
        else:
            number_list[i] = 1
    for i in number_list:
        if number_list[i] == 1:
            return i
    # print(number_list)

print(lonelyinteger([1,2,3,4,3,2,1]))