tag @a[scores={uid=0}] add uid_giving
#选定需要被分配UID的玩家

scoreboard players set @a[tag=uid_giving] uid -1
execute @a[tag=uid_giving] ~ ~ ~ scoreboard players operation @s uid -= @a[scores={uid=-1},tag=uid_giving] uid
#给予需要被分配UID的玩家临时ID

scoreboard players add js uid 1
scoreboard players operation @a[tag=uid_giving] uid += js uid
#将获得临时ID的玩家的临时ID转为UID

scoreboard players operation js uid  > @a[tag=uid_giving] uid
#更新累计ID数据

tag @a[tag=uid_giving] remove uid_giving
#善后