package controller

import (
	"net/http"

	"lari/library/database"

	"github.com/labstack/echo/v4"
)

func AddShoesController(c echo.Context) error {

	shoes, err := database.AddShoes()

	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, err.Error())
	}

	return c.JSON(http.StatusOK, map[string]interface{}{
		"message": "Your post success!",
		"data":    shoes,
	})
}
