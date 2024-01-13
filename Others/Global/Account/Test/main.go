package main

import (
	"DB"
	"fmt"
)

func main() {
	db, err := DB.OpenOrCreateDatabase()
	if err != nil {
		fmt.Println("A Failed", err)
	}

	fmt.Println("B Process", db.CreateBucket([]byte("TEST")))
	b := db.GetBucketByName([]byte("TEST"))
	if b == nil {
		fmt.Println("C Failed")
	}

	//fmt.Println("D Process", b.PutData([]byte("Hello"), []byte("1234567890")))

	fmt.Println("E Process", string(b.GetDataByKey([]byte("Hello"))))
	b.GetMapping()

	fmt.Println("F Process", b.UseDown())

	b = db.GetBucketByName([]byte("TEST"))
	if b == nil {
		fmt.Println("G Failed")
	}

	fmt.Println("H Process", b.UseDown())

	fmt.Println("I Process", db.CloseDatabase())
}
