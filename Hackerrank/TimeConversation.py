def timeConversion(s):
    time = s[:-2].split(":")
    time_ampm = s[-2:]
    if time[0] != "12" and time_ampm == "PM":
        new_value = int(time[0]) + 12
        time[0] = str(new_value)
    elif time[0] == "12" and time_ampm == "AM":
        new_value = "00"
        time[0] = new_value
    
    print(":".join(time))
    # pass

hour ="07:05:45AM"
print(hour[:-2].split(":"))
print(hour[-2:])
timeConversion("12:05:45AM")