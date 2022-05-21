package omikuji

import (
	"fmt"
	"math/rand"
	"time"
)

func Omikuji() {
	t := time.Now().UnixNano()
	rand.Seed(t)
	s := rand.Intn(7)

	switch s {
	case 6:
		fmt.Print(s, "は大吉です")
	case 5, 4:
		fmt.Println(s, "は中吉です")
	case 3, 2:
		fmt.Println(s, "は小吉です")
	}
}
