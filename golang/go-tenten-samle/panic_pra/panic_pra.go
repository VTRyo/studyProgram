package panic_pra

import (
	"errors"
	"fmt"
	"regexp"
)

var validID = regexp.MustCompile(`^[a-z]+\[[0-9]+\]$`)

func ValidID() bool {
	fmt.Println(validID.MatchString("adm[23]"))
	validID2, err := regexp.Compile(`^[a-z]+\[[0-9]+\]$`)
	if err != nil {
	}
	return validID2.MatchString("adm[23]")
}

func NamePanic() (rerr error) {
	defer func() {
		if r := recover(); r != nil {
			if err, isErr := r.(error); isErr {
				rerr = err
			} else {
				rerr = fmt.Errorf("%v", r)
			}
		}
	}()
	panic(errors.New("error"))
	return nil
}
