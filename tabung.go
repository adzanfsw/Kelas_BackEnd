package main

import "fmt"

func main() {

	//deklarasi
	const pi = 3.14
	var tinggi, jari float64

	//Scanf
	fmt.Println("Masukkan Tinggi & Jari-jari Tabung:")
	fmt.Println("(Format: tinggi <spasi> jari-jari)")

	fmt.Scanf("%v", &tinggi)
	fmt.Scanf("%v", &jari)

	// kode disini
	luas := 2*pi*jari*jari + pi*2*jari*tinggi
	fmt.Println("Luas Permukaan Tabung =", luas)
}
