package main

import (
	"fmt"
	"math"
)

func primeX(number int) (prime int) {

	var idx int

	i := 2

	for i >= 2 {
		prima := true
		n := int(math.Sqrt(float64(i)))
		j := 2

		for j <= n {
			if i%j == 0 {
				prima = false
				j = i
			}

			j++
		}

		if prima {
			idx++
		}

		if idx == number {
			return i
		}

		i++
	}

	return i
}

func main() {

	fmt.Println(primeX(1)) // 2

	fmt.Println(primeX(5)) // 11

	fmt.Println(primeX(8)) // 19

	fmt.Println(primeX(9)) // 23

	fmt.Println(primeX(10)) // 29

}
