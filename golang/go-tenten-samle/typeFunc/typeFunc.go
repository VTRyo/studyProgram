package typeFunc

import "fmt"

func TypeFunc() {
	fs := make([]func() string, 2)
	fs[0] = func() string { return "hoge" }
	fs[1] = func() string { return "foo" }
	for _, f := range fs {
		fmt.Println(f())
	}
}
