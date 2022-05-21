package typeAlias

import (
	"fmt"
	"net/http"
)

func TypeAlias() {
	type TypeAlias = http.Client
	fmt.Printf("%T", TypeAlias{})
}
