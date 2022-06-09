package goroutine

import (
	"fmt"
	"time"
)

func Goroutine() {
	defer fmt.Println("main done")

	go func() {
		defer fmt.Println("goroutine1 done")
		time.Sleep(1 * time.Second)
	}()
	go func() {
		defer fmt.Println("goroutine2 done")
		time.Sleep(1 * time.Second)
	}()
	time.Sleep(2 * time.Second)
}
