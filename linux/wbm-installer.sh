#!/bin/bash

OPTIND=1         # Reset in case getopts has been used previously in the shell.

force=0

usage="$(basename "$0") [-h] [-f] -- A simple installer for the SlothSquadron - Weapon Balance Mod

where:
    -h  show this help text
    -f  ignore existing files and redownload the mod"

while getopts ':hf' option; do
  case "$option" in
    h) echo "$usage"
       exit 0
       ;;
    f) force=1
       ;;
   \?) printf "illegal option: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))

FOLDER="$HOME/.local/share/Steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addons"
MODFILE="$HOME/.local/share/Steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addons/slothweaponmod.vpk"
ADDONFILE="$HOME/.local/share/Steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addonlist.txt"
DOWNLOADURL="https://cdn.p-gn.xyz/sloth/latest/slothweaponmod.vpk"

if [ ! -f "$MODFILE" ] || [ "$force" -eq 1 ] ; then
    mkdir -p "$FOLDER"
    rm "$MODFILE" "$ADDONFILE"
    wget "$DOWNLOADURL" -O "$MODFILE"
else
    sed 's/"slothweaponmod.vpk"\(.*\)"0"/"slothweaponmod.vpk"\1"1"/' -i "$ADDONFILE"
fi

echo "Finished installing, if there is no error above, then the mod has been installed correctly"

