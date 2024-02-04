package DB

import (
	"fmt"
	Mapping "phoenixbuilder/fastbuilder/database/mapping"
	"sync"

	"go.etcd.io/bbolt"
)

// 打开 path 处的数据库。
// 当数据库不存在时将创建一个这样的文件
func OpenOrCreateDatabase(path string) (
	database *Database,
	err error,
) {
	db, err := bbolt.Open(
		path,
		0600,
		&bbolt.Options{
			Timeout:      0,
			NoGrowSync:   false,
			FreelistType: bbolt.FreelistMapType,
		},
	)
	if err != nil {
		return nil, fmt.Errorf("OpenOrCreateDatabase: %v", err)
	}
	database = &Database{
		db:           db,
		mapping:      Mapping.GetNewMapping(),
		terminate:    make(chan struct{}, 1),
		openedBucket: &sync.WaitGroup{},
	}
	// open database
	database.RefreshMapping()
	// list all keys
	return
	// return
}

// 刷新数据库中对已有存储桶的统计结果
func (d *Database) RefreshMapping() {
	d.mapping.Reset()
	d.db.View(func(tx *bbolt.Tx) error {
		tx.ForEach(func(name []byte, b *bbolt.Bucket) error {
			d.mapping.Put(name)
			return nil
		})
		return nil
	})
}

// 返回数据库中已有的存储桶的名称的集合。
// 它是 d.mapping 经过处理后的深拷贝形式，
// 因此其生命周期不存在截止日期，
// 即始终有效且与 d.mapping 独立
func (d *Database) GetMapping() (mapping [][]byte) {
	mapping = make([][]byte, 0)
	d.mapping.ForEach(func(key []byte) error {
		mapping = append(mapping, key)
		return nil
	})
	return
}

// 确定数据库中是否存在名为 name 的存储桶
func (d *Database) HasBucket(name []byte) (has bool) {
	return d.mapping.HasKey(name)
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
	d.mapping.Put(name)
	return nil
}

// 删除名为 name 的存储桶
func (d *Database) DeleteBucket(name []byte) error {
	err := d.db.Update(func(tx *bbolt.Tx) error {
		return tx.DeleteBucket(name)
	})
	if err != nil {
		return fmt.Errorf("CreateBucket: %v", err)
	}
	d.mapping.Delete(name)
	return nil
}

// 从数据库中取得名为 name 的存储桶。
// 此后，在进行任何数据库操作前须关闭存储桶，
// 否则任何新增的操作都将被阻塞，
// 直到被(强制)释放
func (d *Database) GetBucketByName(name []byte) (result *Bucket) {
	d.openedBucket.Add(1)
	bucket_got := make(chan struct{}, 1)
	bucket_use_down := make(chan struct{}, 1)
	// prepare
	go d.db.Update(func(tx *bbolt.Tx) error {
		result = &Bucket{
			b:         tx.Bucket(name),
			mapping:   Mapping.GetNewMapping(),
			terminate: make(chan struct{}, 1),
			subBucket: &sync.WaitGroup{},
			use_down:  bucket_use_down,
		}
		result.RefreshMapping()
		bucket_got <- struct{}{}
		select {
		case <-bucket_use_down:
			d.openedBucket.Add(-1)
		case <-d.terminate:
			result.UseDown()
			d.openedBucket.Add(-1)
			d.terminate <- struct{}{}
		}
		return nil
	})
	<-bucket_got
	close(bucket_got)
	// get bucket
	return
	// return
}

// 安全地关闭数据库
func (d *Database) CloseDatabase() error {
	if len(d.terminate) == 0 {
		d.terminate <- struct{}{}
	}
	d.openedBucket.Wait()
	// 等待所有已打开的存储桶被关闭
	d.mapping.Reset()
	err := d.db.Close()
	// 关闭数据库
	if err != nil {
		return fmt.Errorf("CloseDatabase: %v", err)
	}
	return nil
	// 返回值
}
