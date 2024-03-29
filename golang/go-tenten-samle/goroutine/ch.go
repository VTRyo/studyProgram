package goroutine

import (
	"fmt"
	"time"
)

func Chan() {
	ch := make(chan int) //容量0

	go func() {
		ch <- 100
	}()
	go func() {
		v := <-ch
		fmt.Println(v)
	}()
	time.Sleep(2 * time.Second)
}

func ChanSeletct() {
	ch1 := make(chan int)
	ch2 := make(chan string)

	go func() { ch1 <- 100 }()
	go func() { ch2 <- "hi" }()

	select {
	case v1 := <-ch1:
		fmt.Println(v1)
	case v2 := <-ch2:
		fmt.Println(v2)
	}
}

func ChanNil() {
	ch1 := make(chan int)
	var ch2 chan string //ゼロ値はnil

	go func() { ch1 <- 100 }()
	go func() { ch2 <- "hi" }()

	select {
	case v1 := <-ch1:
		fmt.Println(v1)
	case v2 := <-ch2:
		fmt.Println(v2)
	}
}

func makeCh() chan int {
	return make(chan int)
}

func recvCh(recv chan int) int {
	return <-recv
}

func ArgChan() {
	ch := makeCh()
	go func() { ch <- 100 }()
	fmt.Println(recvCh(ch))
}
