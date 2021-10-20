package main

import "fmt"

func main() {

	//input
	var nilai int

	//Scanf
	fmt.Printf("Masukkan Nilai: ")
	fmt.Scanf("%v", &nilai)

	// Process: Your Solution Code Here
	switch {
	case nilai >= 80:
		fmt.Printf("Nilai Siswa = A")
	case nilai >= 65:
		fmt.Printf("Nilai Siswa = B")
	case nilai >= 50:
		fmt.Printf("Nilai Siswa = C")
	case nilai >= 35:
		fmt.Printf("Nilai Siswa = D")
	case nilai >= 0:
		fmt.Printf("Nilai Siswa = E")
	}
}
