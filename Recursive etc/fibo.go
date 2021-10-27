package main

import "fmt"

func fib(n uint) uint {

	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fib(n-1) + fib(n-2)
	}
}

func main() {

	fmt.Println(fib(0)) // 0

	fmt.Println(fib(2)) // 1

	fmt.Println(fib(9)) // 34

	fmt.Println(fib(10)) // 55

	fmt.Println(fib(12)) // 144
}
