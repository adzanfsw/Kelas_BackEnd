package main

import "fmt"

func PairSum(arr []int, target int) []int {

	// your code here
	num1 := 0
	num2 := len(arr) - 1
	sum := arr[num1] + arr[num2]

	for sum != target {
		if sum > target {
			num2 -= 1
		} else {
			num1 += 1
		}
		sum = arr[num1] + arr[num2]
	}

	return []int{num1, num2}
}

func main() {

	fmt.Println(PairSum([]int{1, 2, 3, 4, 6}, 6)) // [1, 3]

	fmt.Println(PairSum([]int{2, 5, 9, 11}, 11)) // [0, 2]

	fmt.Println(PairSum([]int{1, 3, 5, 7}, 12)) // [2, 3]

	fmt.Println(PairSum([]int{1, 4, 6, 8}, 10)) // [1, 2]

	fmt.Println(PairSum([]int{1, 5, 6, 7}, 6)) // [0, 1]

}
