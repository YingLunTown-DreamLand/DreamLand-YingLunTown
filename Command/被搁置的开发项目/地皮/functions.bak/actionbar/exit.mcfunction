<<<<<<< HEAD
execute @a[tag=uw:user,scores={uw:actionbar=0..3},rx=90,rxm=60] ~ ~ ~ tag @s add uw:exit
execute @a[tag=uw:exit] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"您已成功退出\nUnder World System"}]}
execute @a[tag=uw:exit] ~ ~ ~ scoreboard players reset @s uw:actionbar
execute @a[tag=uw:exit] ~ ~ ~ tag @s remove uw:user
execute @a[tag=uw:exit] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=uw:exit] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
execute @a[tag=uw:exit] ~ ~ ~ tag @s remove uw:exit
=======
execute @a[tag=uw:user,scores={uw:actionbar=0..3},rx=90,rxm=60] ~ ~ ~ tag @s add uw:exit
execute @a[tag=uw:exit] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"您已成功退出\nUnder World System"}]}
execute @a[tag=uw:exit] ~ ~ ~ scoreboard players reset @s uw:actionbar
execute @a[tag=uw:exit] ~ ~ ~ tag @s remove uw:user
execute @a[tag=uw:exit] ~ ~ ~ tp ~ ~ ~ ~ 0
execute @a[tag=uw:exit] ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1 1
execute @a[tag=uw:exit] ~ ~ ~ tag @s remove uw:exit
>>>>>>> d95f919c53aa8612409504198bbed77f930d5f64
#exit