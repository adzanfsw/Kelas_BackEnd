package main

import "fmt"

func moneyCoins(money int) []int {

	uang := []int{1, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000}
	kembali := []int{}

	for i := len(uang) - 1; i >= 0; i-- {
		for uang[i] <= money {
			kembali = append(kembali, uang[i])
			money -= uang[i]
			if money == 0 {
				return kembali
			}
		}
	}
	return kembali
}

func main() {

	fmt.Println(moneyCoins(123)) // [100 20 1 1 1]

	fmt.Println(moneyCoins(630))

	fmt.Println(moneyCoins(543)) // [500, 20, 20, 1, 1, 1]

	fmt.Println(moneyCoins(7500))

	fmt.Println(moneyCoins(15321)) // [10000 5000 200 100 20 1]

}
