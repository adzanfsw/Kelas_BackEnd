package database

import (
	"lari/config"
	"lari/model/shoes"
)

func AddShoes() (interface{}, error) {

	shoes := shoes.Shoes{}

	if err := config.DB.Save(&shoes).Error; err != nil {
		return nil, err
	}

	return shoes, nil
}
