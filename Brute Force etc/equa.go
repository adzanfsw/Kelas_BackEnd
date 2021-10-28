package main

import "fmt"

func SimpleEquations(A, B, C int) {

	for x := 1; x <= 10000; x++ {

		for y := 1; y <= 10000; y++ {

			for z := 1; z <= 10000; z++ {

				if x+y+z == A {

					if x*y*z == B {

						if x*x+y*y+z*z == C {
							fmt.Println(x, y, z)
							return
						}
					}
				}
			}
		}
	}

	fmt.Println("No Solution")
	return
}

func main() {

	SimpleEquations(1, 2, 3)  // no solution
	SimpleEquations(6, 6, 14) // 1 2 3
}
