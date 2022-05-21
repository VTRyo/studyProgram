package method

import (
	"fmt"
	"math"
)

type Name string

func (r Name) greeting() string {
	return "Hello," + string(r)
}

func Greeting() {
	var name Name = "VTRyo"
	fmt.Println(name.greeting())
}

type Circle struct {
	radius float32
}

func (c Circle) area() float32 {
	return c.radius * c.radius * math.Pi
}

func CalsCircle() {
	c := Circle{5}
	fmt.Printf("半径%.0fcmの円の面積=%.3fcm", c.radius, c.area())
}
