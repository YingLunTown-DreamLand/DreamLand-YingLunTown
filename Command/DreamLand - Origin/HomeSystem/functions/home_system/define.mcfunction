# pointer_owner 记录数据
# 库指针对应所有者的 uid
scoreboard objectives add home_system:pointer_owner dummy

# home_uid 记录家园的唯一标识符
scoreboard objectives add home_system:home_uid dummy

# home_owner_uid 记录当前家园的所有者
scoreboard objectives add home_system:home_owner_uid dummy

# home_uid 记录持有者的权限类型
scoreboard objectives add home_system:permission_type dummy