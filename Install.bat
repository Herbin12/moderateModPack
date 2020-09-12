@echo off
color 9F
set foldernum=%random%
set mpver=1.2
set instver=1.1
title Herbin12's Moderate Mod Pack Installer [installer v%instver%]
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo -
echo NOTICE:
echo This installer will back up your current mods.
echo The folder will be located at C:\Users\%username%\AppData\Roaming\.minecraft\mods_old
echo -
echo When you are ready to install HMMP version %mpver%, press any key.
pause
cd forge
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo STEP 1 - INSTALLING FORGE 1.7.10
echo -
echo This will install Minecraft Forge 1.7.10 onto your computer.
echo If you have already installed Forge 1.7.10, the current version may be updated.
echo -
echo STEPS TO INSTALL:
echo When an installer is launched, make sure "Install Client" is selected, and select the Install button.
echo PRESS ANY KEY TO START THE INSTALLATION.
pause
cls
echo Wait for the installer to finish, then press any key.
installer.exe
pause
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo STEP 2 - INSTALLING MODS
echo -
echo This will install the mods in this mod pack.
echo -
echo NOTICE:
echo This installer will back up your current mods.
echo The folder will be located at C:\Users\%username%\AppData\Roaming\.minecraft\mods_old
echo -
echo When you are ready to install the mods, press any key.
pause
cls 
mkdir %appdata%\.minecraft\mods_backup_%foldernum%
Xcopy /E %appdata%\.minecraft\mods %appdata%\.minecraft\mods_backup_%foldernum%\
cls
rmdir /s /q %appdata%\.minecraft\mods
mkdir %appdata%\.minecraft\mods
mkdir %appdata%\.minecraft\mods\1.7.10
cls
echo Starting MCMOD installer...
cd ../build/1
build.bat
pause
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo -
echo If you see this message, something went horribly wrong. Try Reinstalling.
pause
