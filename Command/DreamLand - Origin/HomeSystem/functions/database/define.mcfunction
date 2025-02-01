# ------------------------- 通用 -------------------------

# io 指示 io 操作器。
# 操作器即为 io 读取流
# 或 io 写入流。
#
# 情况只可能是下列之一。
#
# 1. io 上的整数被写入到底层字节流
# 2. 底层字节被读出并以整数写入 io
scoreboard objectives add db:io dummy

# io_count 指示 io 次数。
#
# 此字段非零时意味着将会发生 io_count 
# 次的读取或写入。
# 当读取或写入全部完成后，io_count 将
# 被置为默认状态，即 -1。
# 在每次读取前，您应当确保 io 已被置空。
#
# 当需要读取或写入的字节数为 k 时，此值
# 应当为 2*k。
# 特别地，如果读取的是布尔值类型的数据，
# 此值应当为 1
scoreboard objectives add db:io_count dummy

# states 指示 io 的状态。
#
# 当一个整数被 读取/写入 完毕，
# states 将会自增以表示状态的改变。
# 这一过程将发生在 io_count 为 0 时。
#
# 您可以根据 states 的变化决定操作器
# 下一步的操作，例如读取一个 uint16
scoreboard objectives add db:states dummy

# ------------------------- 内部实现 -------------------------

# current_offset_x 和 current_offset_z
# 分别记录指针当前的 x 轴和 z 轴偏移量
scoreboard objectives add db:current_offset_x dummy
scoreboard objectives add db:current_offset_z dummy

# move_offset_x 和 move_offset_z
# 分别记录指针应当进行的 x 轴和 z 轴偏移量，
# 可以为负数
scoreboard objectives add db:move_offset_x dummy
scoreboard objectives add db:move_offset_z dummy

# bit_read 被 io 操作器使用。
# 其指示每个指针的计算用计分板
scoreboard objectives add db:math dummy

# bit_read 被 io 操作器使用。
# 其指示每个指针所使用的以 16
# 为底的幂次方数。
#
# 每次进行读取或写入操作前，
# 此字段应该重设为 1。
scoreboard objectives add db:power_number dummy