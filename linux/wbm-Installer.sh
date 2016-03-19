~/.steam/steam/SteamApps/dota 2 beta/dota/cfg/autoexec.cfg
FOLDER="~/.steam/steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addons"
FILE="~/.steam/steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addons/slothweaponmod.vpk"
DOWNLOADURL="https://cdn.p-gn.xyz/sloth/latest/slothweaponmod.vpk"

mkdir -p $FOLDER
rm -f $FILE
wget $DOWNLOADURL -O $FILE

echo "Finished installing, if there is no error above, then the mod has been installed correctly"
