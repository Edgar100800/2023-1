def sockMerchant(n, ar):
    socks = {}
    for i in ar:
        if i in socks:
            socks[i] += 1
        else:
            socks[i] = 1
    total_pairs = 0
    for i,j in socks.items():
        if j%2 == 0:
            total_pairs += j/2
        elif (j-1)%2==0 and (j-1)!=0:
            total_pairs += (j-1)/2
    return int(total_pairs)

print(sockMerchant( 9,[10, 20, 20, 10, 10, 30, 50, 10, 20]))