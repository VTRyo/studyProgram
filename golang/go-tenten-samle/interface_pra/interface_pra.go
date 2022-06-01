package interface_pra

import "fmt"

type Stringer interface {
	String() string
}

type Hex int

func (h Hex) String() string {
	return fmt.Sprintf("%x", int(h))
}

// Stringerインターフェイスを実装する型 IとB
type I int

func (n I) String() string {
	return "I"
}

type B bool

func (b B) String() string {
	return "B"
}

// Stringerインターフェイスを引数で受け取る関数
func F(s Stringer) {
	switch v := s.(type) {
	case I:
		fmt.Println(int(v), "I")
	case B:
		fmt.Println(bool(v), "B")
	}
}
