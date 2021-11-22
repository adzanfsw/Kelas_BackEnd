package resp

import (
	shoe "lari/model/shoes"
	"time"
)

type Shoes struct {
	ID          int
	Name        string
	Price       int
	BrandID     int
	ShoesTypeID int
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

func FromModel(model shoe.Shoes) Shoes {
	return Shoes{
		ID:          int(model.ID),
		Name:        model.Name,
		Price:       model.Price,
		BrandID:     model.BrandID,
		ShoesTypeID: model.ShoesTypeID,
		CreatedAt:   model.CreatedAt,
		UpdatedAt:   model.UpdatedAt,
	}
}

func FromModelSlice(model []shoe.Shoes) []Shoes {

	var shoeArray []Shoes
	for key := range model {
		shoeArray = append(shoeArray, FromModel(model[key]))
	}

	return shoeArray
}
