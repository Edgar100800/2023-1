
def counter(numbers):
    counts = {}
    for num in numbers:
        if num in counts:
            counts[num] += 1
        else:
            counts[num] = 1
    # return counts
    min_value = 0 
    min_num = 0
    for num,value in counts.items():
        if value > min_value:
            min_value = value
            min_num = num
        elif value == min_value and num < min_num:
            min_num = num

    return min_num

number_list = [1,4,4,4,4,2,2,2,2,3,3,3,3]
print(counter(number_list))