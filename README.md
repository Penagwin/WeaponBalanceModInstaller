#[SlothSquadron - Weapon Balance Mod](https://csgoweaponbalancemod.wordpress.com/)
###[Quick Install - Windows](https://cdn.p-gn.xyz/sloth/wbm-Installer.bat)
----

>  The CS:GO Weapon Balance Mod was created as a way to test long requested weapon changes and provide possible solutions to existing problems identified by Valve and the community.  Such examples being reworked accuracy mechanics for rifles to encourage tapping and bursting for a more varied playstyle (something Valve previously attempted to do), pistol revamps to put less emphasis on randomness to make pistol and eco rounds more skill based, and reworked AWPing mechanics to allow for a more aggressive playstyle to combat the precise rifles found in this mod.

#Installation

For Windows users download and double click on:

 - Installer: [wbm-Installer.bat](https://cdn.p-gn.xyz/sloth/wbm-Installer.bat)
 - Uninstaller: [wbm-Uninstaller.bat](https://cdn.p-gn.xyz/sloth/wbm-Uninstaller.bat)

For Linux users:

- Installer: [wbm-installer.sh](https://cdn.p-gn.xyz/sloth/wbm-installer.sh)
- Uninstaller: [wbm-uninstaller.sh](https://cdn.p-gn.xyz/sloth/wbm-uninstaller.sh)

Linux users need to 
```
    chmod +x wbm-installer.sh
    ./wbm-unstaller.sh
```

##How it works

###Windows

####Installer

 1. Creates the 'addons' folder if it doesn't already exist.
 2. Deletes the current version of the mod if it already exists.
 3. Downloads the latest version of the mod, and places it into the addons folder


####Uninstaller

 1. Deletes the current version of the mod from the 'addons' folder.

###Linux

####Installer

 If the mod is currently installed but deactivated (0 in the addonlist.txt file) the installer activates the mod.

 If not (or the option -f is given):
 1. Creates the 'addons' folder if it doesn't already exist.
 2. Deletes the current version of the mod if it already exists.
 3. Downloads the latest version of the mod, and places it into the addons folder.


####Uninstaller

 Deactivates the mod (sets the mod to 0 in the addonlist.txt file)

 If the option -f is given:
 1. Deletes the current version of the mod from the 'addons' folder.
 2. Deletes the addonlist.txt file.

