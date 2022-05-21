package ponter

import "fmt"

func Pointer() {
	var x int
	f(&x)
	fmt.Println(x)
}

func f(xp *int) {
	*xp = 100
}

// ポインタ渡し
func PointSend() {
	n, m := 10, 20
	swap(&n, &m) //&nはnのアドレスを格納
	println(n, m)
}

func swap(n, m *int) {
	*n, *m = *m, *n // *nは渡ってきたnの値を参照する。値を入れ替えるので、*n = *mとなる
	return
}
