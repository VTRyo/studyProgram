package arrayMap

import (
	"fmt"
)

func ArrayMap() {
	ns := make([]int, 3) //ゼロスライス
	// ns := []int{1, 2, 3, 4} //初期値
	fmt.Println(ns)
	ns1 := ns[0:3]
	fmt.Println(ns1)

	// m := map[string]int{"a": 1, "b": 2}
	// fmt.Println(m["a"])
	// m["z"] = 30
	// n, ok := m["z"]
	// println(n, ok)
	m := map[string][]int{"a": {1, 2}}
	fmt.Println(m["a"][1])
}
