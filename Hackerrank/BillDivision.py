def bonAppetit(bill,k,b):
    total = 0
    for i,j in enumerate(bill):
        if i != k:
            total += j
    print(total)
    print(int(b-total/2))

lista=[3,10,2,9]
bonAppetit(lista,1,12)