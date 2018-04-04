package main

import (
    "log"
    "fmt"
  )

type Money struct {
    amount uint
    currency string
}

func (this *Money) Format() string {
  return fmt.Sprintf("%d %s", this.amount, this.currency)
}

func main() {
  money := &Money{120, "yen"}
  log.Printf("%#v", money)
  log.Print(money.Format())

}
