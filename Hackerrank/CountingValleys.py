def countingValleys(steps, path):
    level = 0
    terrain = 0
    mountain = 0
    valley =0
    for i in path:
        if i == "U":
            level +=1
        elif i == "D":
            level -=1
        print("level:",level," terrain:",terrain)
        if terrain==0 and level>0:
            terrain = 1
        elif terrain==1 and level==0:
            terrain = 0
            mountain+=1
        elif terrain==0 and level<0:
            terrain= -1
        elif terrain==-1 and level==0:
            terrain = 0
            valley+=1
    return(valley)

print(countingValleys(8,"UDDDUDUU"))
    
