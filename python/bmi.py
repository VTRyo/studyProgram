# coding:utf-8

while True:
    height = raw_input('身長(m)?:')
    if len(height) == 0:
        break
    height = float(height)
    weight = float(raw_input('体重(kg)?:'))
    bmi = weight / pow(height,2)
    
    print('BMI値は%0.1fです。' % bmi)
    if bmi <= 18.5:
        print('やせすぎです')
    elif 18.5 <= bmi < 25.0:
        print('標準的な体重')
    elif 25.0 <= bmi < 30.0:
        print('太りすぎデブ')
    else:
        print('死ぬレベルのデブです。一刻も速くライザップ池')
    