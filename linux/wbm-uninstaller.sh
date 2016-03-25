#!/bin/bash

OPTIND=1         # Reset in case getopts has been used previously in the shell.

force=0

usage="$(basename "$0") [-h] [-f] -- A simple uninstaller for the SlothSquadron - Weapon Balance Mod

where:
    -h  show this help text
    -f  delete existing files and uninstall the mod completely"

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

MODFILE="$HOME/.local/share/Steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addons/slothweaponmod.vpk"
ADDONFILE="$HOME/.local/share/Steam/SteamApps/common/Counter-Strike Global Offensive/csgo/addonlist.txt"

if [ "$force" -eq 1 ] ; then
    rm "$MODFILE" "$ADDONFILE"
else
    sed 's/"slothweaponmod.vpk"\(.*\)"1"/"slothweaponmod.vpk"\1"0"/' -i "$ADDONFILE"
fi

echo "The SlothSquadron - Weapon Balance Mod has been uninstalled"

