##実行はインタラクティブシェル
kame.penup()
kame.home()
kame.pendown()
while True:
    kame.left(random.randint(1,360))
    kame.forward(15)
    if kame.distance(0,0) > 200:
        kame.undo()
