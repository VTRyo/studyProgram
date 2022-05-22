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

type Square struct {
	width  float32
	height float32
}

// ポインタレシーバ
// 構造体型のデータの値を変更できる
func (s *Square) Reshape(w float32, h float32) {
	s.width = w
	s.height = h
}

func Reshape() {
	square := Square{3.0, 4.0}
	fmt.Println(square)
	// (&square).Reshape(5.0, 6.0)
	square.Reshape(5.0, 6.0)
	fmt.Println(square)
}

// ポインタレシーバの練習
type MyInt int

func (n *MyInt) Inc() { // ポインタをはずすとn.Incは変更されない
	*n++
}
func Int() {
	var n MyInt
	println(n)
	n.Inc()
	println(n)
}
