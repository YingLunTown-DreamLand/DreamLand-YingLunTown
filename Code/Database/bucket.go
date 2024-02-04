package DB

import (
	"fmt"
	Mapping "phoenixbuilder/fastbuilder/database/mapping"
	"sync"
)

// 刷新存储桶中对已有键的统计结果
func (b *Bucket) RefreshMapping() {
	b.mapping.Reset()
	b.b.ForEach(func(k, v []byte) error {
		b.mapping.Put(k)
		return nil
	})
}

// 返回存储桶中已有的键的名称的集合。
// 它是 b.mapping 经过处理后的深拷贝形式，
// 因此其生命周期不存在截止日期，
// 即始终有效且与 b.mapping 独立
func (b *Bucket) GetMapping() (mapping [][]byte) {
	mapping = make([][]byte, 0)
	b.mapping.ForEach(func(key []byte) error {
		mapping = append(mapping, key)
		return nil
	})
	return
}

// 确定存储桶中是否存在名为 name 的键
func (b *Bucket) HasKey(key []byte) (has bool) {
	return b.mapping.HasKey(key)
}

// 向名为 key 的键处放置数据 data
func (b *Bucket) PutData(key []byte, data []byte) error {
	err := b.b.Put(key, data)
	if err != nil {
		return fmt.Errorf("PutData: %v", err)
	}
	b.mapping.Put(key)
	return nil
}

// 删除名为 key 的键处所存放的数据
func (b *Bucket) DeleteData(key []byte) error {
	err := b.b.Delete(key)
	if err != nil {
		return fmt.Errorf("DeleteData: %v", err)
	}
	b.mapping.Delete(key)
	return nil
}

// 在当前存储桶中创建名为 name 的子存储桶
func (b *Bucket) CreateSubBucket(name []byte) error {
	_, err := b.b.CreateBucket(name)
	if err != nil {
		return fmt.Errorf("CreateSubBucket: %v", err)
	}
	b.mapping.Put(name)
	return nil
}

// 删除该存储桶中名为 name 的子存储桶
func (b *Bucket) DeleteSubBucket(name []byte) error {
	err := b.b.DeleteBucket(name)
	if err != nil {
		return fmt.Errorf("CreateSubBucket: %v", err)
	}
	b.mapping.Delete(name)
	return nil
}

// 从该存储桶取得名为 name 的子存储桶。
// 你可以同时打开若干个子存储桶，
// 它们互相独立，可以同时操作。
// 在子存储桶使用完毕后，
// 你必须将其释放，否则可能会造成阻塞
func (b *Bucket) GetSubBucketByName(name []byte) (result *Bucket) {
	b.subBucket.Add(1)
	sub_bucket_got := make(chan struct{}, 1)
	sub_bucket_use_down := make(chan struct{}, 1)
	// prepare
	go func() {
		result = &Bucket{
			b:         b.b.Bucket(name),
			mapping:   Mapping.GetNewMapping(),
			terminate: make(chan struct{}, 1),
			subBucket: &sync.WaitGroup{},
			use_down:  sub_bucket_use_down,
		}
		result.RefreshMapping()
		sub_bucket_got <- struct{}{}
		select {
		case <-sub_bucket_use_down:
			b.subBucket.Add(-1)
		case <-b.terminate:
			result.UseDown()
			b.subBucket.Add(-1)
			if len(b.terminate) == 0 {
				b.terminate <- struct{}{}
			}
		}
	}()
	<-sub_bucket_got
	close(sub_bucket_got)
	// get bucket
	return
	// return
}

// 取得名为 key 的键处所放置的数据。
// 返回值仅在存储桶被释放前有效
func (b *Bucket) GetDataByKey(key []byte) (result []byte) {
	return b.b.Get(key)
}

// 安全地释放存储桶及已打开的所有子存储桶
func (b *Bucket) UseDown() error {
	if len(b.terminate) == 0 {
		b.terminate <- struct{}{}
	}
	b.subBucket.Wait()
	// 等待所有已打开的子存储桶被关闭
	b.b = nil
	b.mapping.Reset()
	// 释放当前存储桶
	b.use_down <- struct{}{}
	close(b.use_down)
	// 向上层实现发送已完成释放的信号
	return nil
	// 返回值
}
