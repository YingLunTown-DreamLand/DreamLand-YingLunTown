package DB

import (
	"General/Mapping"
	"sync"

	"go.etcd.io/bbolt"
)

// 描述一个数据库
type Database struct {
	db           *bbolt.DB       // 数据库
	mapping      Mapping.Mapping // 数据库所有存储桶的名称的集合
	terminate    chan struct{}   // 用于向已打开的存储桶发送数据库正被关闭的信号
	openedBucket *sync.WaitGroup // 描述已打开的存储桶
}

// 描述数据库中的单个存储桶
type Bucket struct {
	b         *bbolt.Bucket   // 存储桶
	mapping   Mapping.Mapping // 存储桶中所有键名的集合
	terminate chan struct{}   // 用于向已打开的子桶发送其上层存储桶正被关闭的信号
	subBucket *sync.WaitGroup // 描述已打开的子存储桶
	use_down  chan<- struct{} // 描述存储桶是否已使用完毕
}
