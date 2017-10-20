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

