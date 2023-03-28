def pageCount(n, p):
    front_counter = 0
    back_counter = 0 
    page = 1
    while page < p:
        front_counter += 1
        page +=2
    # return front_counter
    page = n if n%2==0 else n-1
    while page > p:
        back_counter += 1
        page -= 2

    best_option = front_counter if front_counter<back_counter else back_counter
    return best_option

print(pageCount(96993,70030))