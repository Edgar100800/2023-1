if __name__ == '__main__':
    students_list = []
    scores_list = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students_list.append([name,score])
        if score not in scores_list:
            scores_list.append(score)

    scores_list.sort()    
    print(scores_list)

    second_lowest_students = []
    for i in students_list:
        if i[1] == scores_list[1]:
            second_lowest_students.append(i[0])
    second_lowest_students.sort()        
    # print(second_lowest_students)
    # print(scores_list)

    for i in second_lowest_students:
        print(i)