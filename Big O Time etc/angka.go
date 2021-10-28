package main

import (
	"fmt"
)

func munculSekali(angka string) []int {
	// your code here
	// Map untuk mengubah string ke integer
	num := map[string]int{
		"0": 0,
		"1": 1,
		"2": 2,
		"3": 3,
		"4": 4,
		"5": 5,
		"6": 6,
		"7": 7,
		"8": 8,
		"9": 9,
	}

	sama := true
	var number []int

	//Iterasi untuk menemukan angka yang tidak berulang
	for i := 0; i < len(angka); i++ {
		sama = true
		for j := 0; j < len(angka); j++ {
			if angka[i] == angka[j] && i != j {
				sama = false
				break
			}
		}

		if sama == true {
			number = append(number, num[string(angka[i])])
		}
	}

	return number
}

func main() {

	fmt.Println(munculSekali("1234123")) // [4]

	fmt.Println(munculSekali("76523752")) // [6, 3]

	fmt.Println(munculSekali("12345")) // [1 2 3 4 5]

	fmt.Println(munculSekali("1122334455")) // []

	fmt.Println(munculSekali("0872504")) // [8 7 2 5 4]

}
