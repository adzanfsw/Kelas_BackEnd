package main

import (
	"net/http"
	"time"

	"github.com/labstack/echo/v4"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var DB *gorm.DB

func initDB() {

	var err error

	db, err := gorm.Open(mysql.Open("root:@/sepatu"), &gorm.Config{})

	if err != nil {
		panic(err)
	}

	DB = db
	DB.AutoMigrate(&Shoes{})
}

func main() {

	initDB()

	e := echo.New()

	e.POST("/api/shoes/add", AddShoes)

	e.Start(":3000")
}

type Shoes struct {
	ID          int
	Name        string
	Price       int
	BrandID     int
	ShoesTypeID int
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

func AddShoes(c echo.Context) error {

	newShoes := Shoes{}
	c.Bind(&newShoes)

	if err := DB.Save(&newShoes).Error; err != nil {
		return c.JSON(http.StatusBadRequest, err)
	}

	return c.JSON(http.StatusAccepted, map[string]interface{}{
		"message": "Your post success!",
		"data":    newShoes,
	})
}
