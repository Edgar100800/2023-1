def findMedian(arr):
    order_list  = sorted(arr)
    print(order_list[int((len(order_list)-1)/2)])

list = [0,1,2,4,6,5,3]
# print(len(list)-1/2)
findMedian(list)
