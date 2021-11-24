package main

import (
	"lari/config"
	"lari/route"
)

func main() {

	config.InitDB()
	config.AutoMigrate()

	e := route.RouteShoes()
	e.Start(":3000")
}
