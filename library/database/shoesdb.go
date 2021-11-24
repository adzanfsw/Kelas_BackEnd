package database

import (
	"lari/config"
	shoe "lari/model/shoes"
)

func AddShoes() (shoes []shoe.Shoes, err error) {

	if err := config.DB.Save(&shoes).Error; err != nil {
		return []shoe.Shoes{}, err
	}

	return shoes, nil
}
