def dayofProgrammer(year):
    if year<=1917 and year >= 1700:
        if year%4==0:
            print("12.09."+str(year))
        else:
            print("11.09."+str(year))
    elif year == 1918:
        print("26.09."+str(year))
    else:
        if year%400 or (year%4 and not(year%100)):
            print("12.09."+str(year))
        else:
            print("13.09."+str(year))



value = int(input())
dayofProgrammer(value)