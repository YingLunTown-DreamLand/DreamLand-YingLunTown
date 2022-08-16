execute @a[tag=uw:user] ~ ~ ~ scoreboard players add @s uw:actionbar 0
execute @a[tag=uw:user,scores={uw:actionbar=0..3}] ~ ~ ~ function actionbar/a
execute @a[tag=uw:user,scores={uw:actionbar=4}] ~ ~ ~ scoreboard players set @s uw:actionbar 1
execute @a[tag=uw:user,scores={uw:actionbar=0..3},rx=90,rxm=60,c=1] ~ ~ ~ function actionbar/exit
#actionbar/a
execute @a[tag=uw:user,scores={uw:actionbar=5..8}] ~ ~ ~ function actionbar/b
execute @a[tag=uw:user,scores={uw:actionbar=9}] ~ ~ ~ scoreboard players set @s uw:actionbar 5
#actionbar/b
execute @a[tag=uw:user,scores={uw:actionbar=10}] ~ ~ ~ function actionbar/c
execute @a[tag=uw:user,scores={uw:actionbar=10},rx=90,rxm=60,c=1] ~ ~ ~ function actionbar/return/c
#actionbar/c