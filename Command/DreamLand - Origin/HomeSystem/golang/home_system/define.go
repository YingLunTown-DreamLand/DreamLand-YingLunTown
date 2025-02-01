package home_system

// HomeConfig 描述一个家园的配置项
type HomeConfig struct {
	HomeBasicData  HomeBasicData        // 家园的基本信息
	UserPayData    UserPayData          // 家园被购买时的信息
	HomeManager    HomeManageInfo       // 家园的管理人员
	HomeProtect    HomeProtectSystem    // 家园的保护模块
	UserPermission UserPermissionInHome // 玩家在地皮内的权限
	HomeAllowList  HomeAllowList        // 家园的允许列表
}

// ------------------------- HomeBasicData -------------------------

// HomeBasicData 描述一个家园的基本信息
type HomeBasicData struct {
	HomeUID            uint16 // 家园的编号
	HomeCreateUnixTime uint64 // 家园的创建时间 (Unix 时间)
	HomeOwnerUID       uint16 // 家园的所有者
}

// ------------------------- UserPayData -------------------------

// UserPayData 描述家园被购买时的交易信息
type UserPayData struct {
	HomeType uint8 // 家园的类型 (uint4)

	HomeValue uint16 // 家园的原价
	UserPay   uint16 // 用户实付款

	UseDiscount     bool  // 购买时是否使用折扣
	DiscountPercent uint8 // 折扣幅度的百分比

	IsTransfer     bool   // 家园是否来自于转让
	TransferCount  uint8  // 该家园的总转让次数
	TransferSource uint16 // 转让来源 (玩家编号)
}

// ------------------------- HomeManager -------------------------

// HomeManageInfo 描述家园的管理人员
type HomeManageInfo struct {
	AdminCouldManager         bool // 服务器管理员是否可以管理家园
	CreativeCouldManager      bool // 创造玩家是否可以管理家园
	TrustedPlayerCouldManager bool // 白名单玩家是否可以管理家园

	Size      uint8    // 有效的管理员的数量
	PlayerUID []uint16 // 各个玩家的编号
}

// ------------------------- HomeProtect -------------------------

// HomeProtectSystem 描述家园保护系统
type HomeProtectSystem struct {
	HomeAllowMonster bool       // 家园内允许怪物生成
	HomeAllowItem    bool       // 家园内允许自然掉落物
	HomeEffect       HomeEffect // 家园内的常驻药水效果
}

// HomeEffect 描述家园内的常驻药水效果
type HomeEffect struct {
	/*
		我们通过使用四个 64 位无符号整数
		来储存该家园内已启用的药水效果。

		这四个整数可以作为一个 256 位
		无符号整数的表示，总共可以表示
		至多 256 种药水效果的启用状态。

		其中，EffectTypeLowerA
		和 EffectTypeLowerB 是低位部分，
		而 EffectTypeHigerA 和
		EffectTypeHigerB 是高位部分。

		ShouldRead 字段分别指示相应的
		64 位无符号整数是否应当读取
	*/

	ShouldReadLowerA bool
	EffectTypeLowerA uint64

	ShouldReadLowerB bool
	EffectTypeLowerB uint64

	ShouldReadHigerA bool
	EffectTypeHigerA uint64

	ShouldReadHigerB bool
	EffectTypeHigerB uint64
}

// ------------------------- UserPermission -------------------------

// UserPermissionInHome 描述玩家在家园内的权限设置
type UserPermissionInHome struct {
	IsEnabled        bool             // 是否启用权限配置
	PermissionConfig PermissionConfig // 权限配置清单
	ByPassList       ByPassList       // 可绕过上述权限限制的人员
}

// PermissionConfig 描述家园内玩家权限的配置
type PermissionConfig struct {
	AllowBuild            bool // 家园内是否允许建造
	AllowMine             bool // 家园内是否允许挖掘
	AllowDoorsAndSwitches bool // 家园内是否允许使用门和开关
	AllowOpenContainers   bool // 家园内是否打开容器
	AllowPvP              bool // 家园内是否启用 PvP
	AllowPvE              bool // 家园内是否启用 PvE
	AllowFakeFlying       bool // 家园内是否启用伪飞行
}

// ByPassList 指示可以绕过家园权限限制的人员
type ByPassList struct {
	AdminCouldByPass         bool // 服务器管理员是否可以绕过
	CreativeCouldByPass      bool // 创造玩家是否可以绕过
	TrustedPlayerCouldByPass bool // 白名单玩家是否可以绕过

	Size      uint8    // 有效的可绕过人员的数量
	PlayerUID []uint16 // 各个玩家的编号
}

// ------------------------- HomeAllowList -------------------------

// HomeAllowList 描述家园的允许列表，
// 其记载可访问家园的组织或个人
type HomeAllowList struct {
	AllowAdmin         bool              // 允许管理员
	AllowCreative      bool              // 允许创造模式的玩家
	AllowTrustedPlayer bool              // 允许白名单玩家
	AllowOrganization  AllowOrganization // 允许的组织
	AllowPlayer        AllowPlayer       // 允许的个人
}

// AllowOrganization 描述多个可访问家园的组织
type AllowOrganization struct {
	SizeOfOrgans uint8   // 有效的组织的数量
	Organs       []uint8 // 各个组织的编号
}

// AllowPlayer 描述多个可访问家园的玩家
type AllowPlayer struct {
	SizeOfPlayers uint8    // 有效的玩家的数量
	PlayerUID     []uint16 // 各个玩家的编号
}

// ------------------------- END -------------------------
