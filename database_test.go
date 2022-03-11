package golang_database

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"testing"
)

func TestEmpty(t *testing.T) {
	db, err := sql.Open("mysql", "root:root@tcp(localhost:3306)/golang_database")

	if err != nil {
		panic(err)
	}
	defer db.Close()

	fmt.Println(db)
}
