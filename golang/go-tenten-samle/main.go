package main

import (
	"fmt"
	"go-sample/arrayMap"
	"go-sample/interface_pra"
	"go-sample/method"
	"go-sample/omikuji"
	"go-sample/ponter"
	"go-sample/typeAlias"
	"go-sample/typeFunc"
)

func main() {
	arrayMap.ArrayMap()
	omikuji.Omikuji()
	typeAlias.TypeAlias()
	typeFunc.TypeFunc()
	ponter.PointSend()
	method.Greeting()
	// method.CalsCircle()
	// method.Reshape()
	method.Int()
	var s interface_pra.Stringer = interface_pra.Hex(100)
	fmt.Println(s)
	n := interface_pra.I(100)
	interface_pra.F(n)
	interface_pra.F(interface_pra.B(true))
}
