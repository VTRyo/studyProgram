#coding: utf-8
import turtle
import math
import random

class Line:
    def __init__(self,slp,x0,y0):
        self.slp = float(slp)
        self.x0 = float(x0)
        self.y0 = float(y0)
        
    def get_y(self,x):
        return self.slp * (x-self.x0) + self.y0
    
    def get_x(self,y):
        return self.x0 + (y - self.y0) / self.slp


class Kame(turtle.Turtle):
    def __init__(self):
        super(Kame,self).__init__()
        self.shape('turtle')
        self.shapesize(2,2)
        self.radians() #角度の指定を弧度法に変更
        #掃除機で掃除してる風に色変更
        self.width(10)
        self.getscreen().bgcolor('gray')
        self.pencolor('white')

    def hit_wall(self):
        xx = self.window_width() / 2.0 #ウィンドウ幅の半分がx座標の最大値
        yy = self.window_height() / 2.0 #ウィンドウ高の半分がy座標の最大値

        line = Line(math.tan(self.heading()),self.xcor(),self.ycor())
        rand_angle = math.pi * random.random()

        if self.towards(-xx,yy) > self.heading() >= self.towards(xx,yy):
            des_x = line.get_x(yy)
            des_y = yy
            turn_angle = self.heading() + rand_angle
        elif self.towards(-xx, -yy) > self.heading() >= self.towards(-xx,yy):
            des_x = -xx
            des_y = line.get_y(-xx)
            turn_angle = self.heading() - 0.5 * math.pi + rand_angle
        elif self.towards(xx,-yy) > self.heading() >= self.towards(-xx,-yy):
            des_x = line.get_x(-yy)
            des_y = -yy
            turn_angle = self.heading() - rand_angle
        else:
            des_x = xx
            des_y = line.get_y(xx)
            turn_angle = self.heading() - 0.5 * math.pi - rand_angle

        self.goto(des_x,des_y) #壁に当たるまで移動
        self.right(turn_angle) #回転して内側に顔を出す

    def run(self):
        while True:
            self.hit_wall()

    def click_on_move(self,x,y):
        self.goto(x,y)


