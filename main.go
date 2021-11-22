package main

import (
	"lari/config"
	"lari/route"
)

func main() {

	config.InitDB()
	e := route.RouteShoes()
	e.Logger.Fatal(e.Start(":3000"))
}
