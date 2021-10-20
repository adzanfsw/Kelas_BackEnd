package main

import "fmt"

func main() {

	var bilangan int
	var i int

	fmt.Printf("Masukkan Bilangan Bulat: ")
	fmt.Scanf("%d", &bilangan)

	fmt.Println("Faktor bilangan nya:")

	for i = 1; i <= bilangan; i++ {
		if bilangan%i == 0 {
			fmt.Println(i)
		}
	}
}
