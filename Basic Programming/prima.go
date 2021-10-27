package main

import "fmt"

func CheckPrime(number int) {
	isPrime := true

	if number == 0 || number == 1 {
		fmt.Printf("Bukan bilangan prima.")
	} else {
		for i := 2; i <= number/2; i++ {
			if number%i == 0 {
				fmt.Printf("Bukan bilangan prima.")
				isPrime = false
				break
			}
		}
		if isPrime == true {
			fmt.Printf("Bilangan prima.")
		}
	}
}

func main() {
	var number int
	fmt.Print("Masukkan angka: ")
	fmt.Scanln(&number)
	CheckPrime(number)
}
