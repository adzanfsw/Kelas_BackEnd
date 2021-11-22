package shoes

import "time"

type Shoes struct {
	ID          int
	Name        string
	Price       int
	BrandID     int
	ShoesTypeID int
	CreatedAt   time.Time
	UpdatedAt   time.Time
}
