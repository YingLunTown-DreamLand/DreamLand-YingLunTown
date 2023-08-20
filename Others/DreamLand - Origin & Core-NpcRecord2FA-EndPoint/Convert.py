from nbtlib.tag import Compound, List, String, Short
from BDXConverter.Operation.PlaceBlockWithNBTData import PlaceBlockWithNBTData
import BDXConverter

bdx = BDXConverter.ReadBDXFile('Core-NpcRecord2FA-EndPoint.bdx')

index = 0
for i in range(len(bdx.BDXContents)):
    if bdx.BDXContents[i].operationName == 'PlaceBlockWithNBTData':
        index = i
        break

ans: PlaceBlockWithNBTData = bdx.BDXContents[index]  # type: ignore
for currentBox in ans.blockNBT["Items"]:
    contents: List[Compound] = currentBox['tag']['Items']
    for i in contents:
        if i['Name'] == String('minecraft:npc_spawn_egg'):
            i['Name'] = String('minecraft:spawn_egg')
            i['Damage'] = Short(51)

bdx.Signature.signedOrNeedToSign = False
BDXConverter.DumpStructs(bdx, 'Core-NpcRecord2FA-EndPoint-Modified.bdx')
