package main

import "fmt"

func pangkat(x, n int) int {

	result := 1
	if n == 0 {
		return result
	}

	for n >= 1 {
		if n%2 != 0 {
			result *= x
		}

		x *= x
		n /= 2
	}

	return result

}

func main() {

	fmt.Println(pangkat(2, 3)) // 8

	fmt.Println(pangkat(5, 3)) // 125

	fmt.Println(pangkat(10, 2)) // 100

	fmt.Println(pangkat(2, 5)) // 32

	fmt.Println(pangkat(7, 3)) // 343

}
