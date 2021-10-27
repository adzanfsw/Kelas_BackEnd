package main

import "fmt"

func playWithAsterik(n int) {

	for i := n - 1; i >= 0; i-- {

		for j := 0; j < i; j++ {
			fmt.Printf(" ")
		}

		for k := 0; k < n-i; k++ {
			fmt.Printf("* ")
		}

		fmt.Printf("\n")
	}
}

func main() {
	playWithAsterik(5)
}
