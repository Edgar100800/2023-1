def catAndMouse(x, y, z):
    cat1 = abs(x-z)
    cat2 = abs(y-z)
    if cat1 == cat2:
        return "Mouse C"
    elif cat1 > cat2:
        return "Cat B"
    else:
        return "Cat A"

print(catAndMouse(1,3,2))
