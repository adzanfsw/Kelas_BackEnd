package config

import (
	"lari/model/shoes"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var DB *gorm.DB

func InitDB() {

	var err error

	db, err := gorm.Open(mysql.Open("root:@/sepatu"), &gorm.Config{})

	if err != nil {
		panic(err)
	}

	DB = db
	DB.AutoMigrate(&shoes.Shoes{})
}
