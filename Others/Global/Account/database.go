package main

import (
	"bytes"
	"fmt"

	"go.etcd.io/bbolt"
)

type Database struct {
	db      *bbolt.DB
	mapping map[int][]byte
}

type Bucket struct {
	b        *bbolt.Bucket
	use_down <-chan struct{}
}

// 打开 account_with_password.db 中的数据库。
// 当数据库不存在时将创建一个这样的文件
func OpenOrCreateDatabase() (database *Database, err error) {
	db, err := bbolt.Open("account_with_password.db", 0600, nil)
	if err != nil {
		return nil, fmt.Errorf("OpenOrCreateDatabase: %v", err)
	}
	database = &Database{db: db}
	// open database
	database.RefreshMapping()
	// list all keys
	return
	// return
}

// 刷新数据库中的键值映射表
func (d *Database) RefreshMapping() {
	d.mapping = make(map[int][]byte)
	d.db.View(func(tx *bbolt.Tx) error {
		i := 0
		tx.ForEach(func(name []byte, b *bbolt.Bucket) error {
			d.mapping[i] = name
			i++
			return nil
		})
		return nil
	})
}

// 确定数据库中是否存在名为 name 的存储桶
func (d *Database) HasKey(name []byte) (has bool) {
	for _, value := range d.mapping {
		if bytes.Equal(name, value) {
			return true
		}
	}
	return
}

// 创建名为 name 的存储桶
func (d *Database) CreateBucket(name []byte) error {

	err := d.db.Update(func(tx *bbolt.Tx) error {
		_, err := tx.CreateBucket(name)
		return err
	})
	if err != nil {
		return fmt.Errorf("CreateBucket: %v", err)
	}
	return nil
}

// 从数据库中取得名为 name 的存储桶
func (d *Database) GetBucketByName(name []byte) (result *Bucket) {
	data_got := make(chan struct{}, 1)
	use_down := make(chan struct{}, 1)
	// prepare
	go d.db.Update(func(tx *bbolt.Tx) error {
		result = &Bucket{b: tx.Bucket(name), use_down: use_down}
		data_got <- struct{}{}
		<-use_down
		return nil
	})
	<-data_got
	// get bucket
	return
	// return
}

// 关闭数据库
func (d *Database) CloseDatabase() error {
	d.mapping = nil
	err := d.db.Close()
	if err != nil {
		return fmt.Errorf("CloseDatabase: %v", err)
	}
	return nil
}
