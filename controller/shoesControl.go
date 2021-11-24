package controller

import (
	"net/http"

	"lari/library/database"

	respShoes "lari/controller/resp"

	"github.com/labstack/echo/v4"
)

func AddShoesController(c echo.Context) error {

	result, err := database.AddShoes()

	if err != nil {
		return c.JSON(http.StatusInternalServerError, err)
	}

	return c.JSON(http.StatusOK, map[string]interface{}{
		"message": "hope all feeling well",
		"data":    respShoes.FromModelSlice(result),
	})
}

// func AddShoesController(c echo.Context) error {

// 	shoes, err := database.AddShoes()

// 	if err != nil {
// 		return echo.NewHTTPError(http.StatusBadRequest, err.Error())
// 	}

// 	return c.JSON(http.StatusOK, map[string]interface{}{
// 		"message": "Your post success!",
// 		"data":    shoes,
// 	})
// }
