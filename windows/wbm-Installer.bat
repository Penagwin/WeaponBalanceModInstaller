SET folder="C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\addons"
SET file="C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\addons\slothweaponmod.vpk"
SET downloadURL="http://cdn.p-gn.xyz/sloth/latest/slothweaponmod.vpk"

if not exist %folder% mkdir %folder%
if exist %file% del %file%

bitsadmin.exe /transfer "DownloadCSGOWeaponMod" %downloadURL% %file%
ECHO "Finished installing, if there is no error above, then the mod has been installed correctly"
PAUSE
