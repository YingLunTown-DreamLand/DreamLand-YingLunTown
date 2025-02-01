package database

/*
HomeConfig (Data coding structure)



NOTE
1. The maximum length of a single line is 64.
2. A maximum of 64 lines is allowed.



SUMMARY
All size:
	64*64 = 4096
Used size:
	24+19+(5+512)+(6+64)+(13+512)+(7+256+1024) = 2442
Available size (expect):
	4096-2442 = 1654
Available size (actual):
	(64-44+1)*64 = 1344
Use ratio:
	1-(1344/4096) = 67.1875%
Available ratio:
	100%-67.1875% = 32.8125%
Maximum read time / Dump needs time:
	2442/20 = 122.1 second(s)
Average read time (for **ALL** case):
	HomeBasicData(HomeUID, HomeOwnerUID),																  // 8
	UserPermission(AdminCouldManager, CreativeCouldManager, TrustedPlayerCouldManager, PlayerUID),		  // 7
	HomeProtect
		HomeAllowMonster, HomeAllowItem,																  // 2
		HomeEffect(ShouldReadLowerA, ShouldReadLowerB, ShouldReadHigerA, ShouldReadHigerB, EffetType...), // 20
	UserPermission
		IsEnabled, PermissionConfig,																	  // 8
		ByPassList(AdminCouldByPass, CreativeCouldByPass, TrustedPlayerCouldByPass, PlayerUID),			  // 7
	HomeAllowList(AllowAdmin, AllowCreative, AllowTrustedPlayer, AllowOrganization, AllowPlayer)		  // 9

	= 8+7+(2+20)+(8+7+9) = 61 tick(s)
	= 61/20 = 3.05(s)





STRUCTURE
LINE 01 | HomeUID(uint16, 0), HomeCreateUnixTime(uint64, 4), HomeOwnerUID(uint16, 20) // HomeBasicData (size=24)



LINE 02 | HomeType(uint4, 0), HomeValue(uint16, 1), UserPay(uint16, 5), UseDiscount(bool, 9),
        | DiscountPercent(uint8, 10), IsTransfer(bool, 12), TransferCount(uint8, 13),
	    | TransferSource(uint16, 15) 												  // UserPayData (size=19)



LINE 03 | AdminCouldManager(bool, 0), CreativeCouldManager(bool, 1), TrustedPlayerCouldManager(bool, 2),
        | Size(uint8, 3),															  // max(Size) = 32
LINE 04 | PlayerUID([]uint16, 0) ... 												  // &PlayerUID[i] = (line=4+i/16, offest=i%16)
....... | ...
LINE 11 | end of PlayerUID															  // HomeManager (size=5+512)



LINE 12 | HomeAllowMonster(bool, 0), HomeAllowItem(bool, 1),
		| ShouldReadLowerA(bool, 2), ShouldReadLowerB(bool, 3),
		| ShouldReadHigherA(bool, 4), ShouldReadHigherB(bool, 5),
LINE 13 | EffectTypeLowerA(uint64, 0),					  							  // &EffectType[i]
		| EffectTypeLowerB(uint64, 16),												  // = (block_offset=16*(i/64)+(i%64)/4, bit_offset=i%64%4)
		| EffectTypeHigherA(uint64, 32),
		| EffectTypeHigherB(uint64, 48)				  								  // HomeProtect (size=6+64)



LINE 14 | IsEnabled(bool, 0), AllowBuild(bool, 1), AllowMine(bool, 2), AllowDoorsAndSwitches(bool, 3),
		| AllowOpenContainers(bool, 4), AllowPvP(bool, 5), AllowPvE(bool, 6), AllowFakeFlying(bool, 7),
		| AdminCouldByPass(bool, 8), CreativeCouldByPass(bool, 9), TrustedPlayerCouldByPass(bool, 10),
		| Size(uint8, 11), 															  // max(Size) = 32
LINE 15 | PlayerUID([]uint16, 0) ... 												  // &PlayerUID[i] = (line=15+i/16, offest=i%16)
....... | ...
LINE 22 | end of PlayerUID															  // UserPermission (size=13+512)



LINE 23 | AllowAdmin(bool, 0), AllowCreative(bool, 1), AllowTrustedPlayer(bool 2),
		| SizeOfOrgans(uint8, 3), SizeOfPlayers(uint8, 5),							  // max(SizeOfOrgans) = 256, max(SizeOfPlayers) = 64
LINE 24 | Organs([]uint8, 0) ...												  	  // &Organs[i] = (line=24+i/64, offest=i%64)
....... | ...
LINE 27 | end of Organs
LINE 28 | PlayerUID([]uint16, 0) ... 												  // &PlayerUID[i] = (line=28+i/16, offest=i%16)
....... | ...
LINE 43 | end of PlayerUID															  // HomeAllowList (size=7+256+1024)
*/
