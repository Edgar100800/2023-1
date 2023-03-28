# def counter():

def count_numbers(numbers):
    counts = {}
    for num in numbers:
        if num in counts:
            counts[num] += 1
        else:
            counts[num] = 1
            
    most_common_num = None
    max_count = 0
    for num, count in counts.items():
        if count > max_count:
            most_common_num = num
            max_count = count
        elif count == max_count and num < most_common_num:
            most_common_num = num
    return most_common_num


lista = [1, 4 ,4 ,4 ,5,5,5, 3,1,1]
print(count_numbers(lista))