package route

import (
	"lari/controller"

	"github.com/labstack/echo/v4"
)

func RouteShoes() *echo.Echo {

	e := echo.New()

	e.POST("/api/shoes/add", controller.AddShoesController)

	return e
}
