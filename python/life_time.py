import datetime

# today = datetime.date(2017,10,2)
today = datetime.date.today()
birth = datetime.date(1993,2,16)

life_time = today - birth

print(life_time)


