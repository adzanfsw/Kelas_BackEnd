package main

import "fmt"

func palindrome(input string) bool {
	for i := 0; i < len(input); i++ {
		j := len(input) - 1 - i
		if input[i] != input[j] {
			return false
		}
	}
	return true
}

func main() {

	fmt.Printf("Ketikkan sebuah kata: ")
	var kata string
	fmt.Scanln(&kata)

	if palindrome(kata) == true {
		fmt.Println("Kata tersebut adalah palindrome.")
	} else {
		fmt.Println("Kata tersebut bukan palindrome.")
	}
}
