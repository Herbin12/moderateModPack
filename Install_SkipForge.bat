@echo off
color 9F
set foldernum=%random%
set mpver=1.2
set instver=1.2-SkipForge
title Herbin12's Moderate Mod Pack Installer (SkipForge) [installer v%instver%]
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo -
echo NOTICE:
echo This installer will back up your current mods.
echo The folder will be located at C:\Users\%username%\AppData\Roaming\.minecraft\mods_old
echo -
echo When you are ready to install HMMP version %mpver%, press any key.
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
cd versions/1.20
build.bat
cls
echo Herbin12's Moderate Mod Pack [version %mpver%; installer v%instver%]
echo -
echo If you see this message, something went horribly wrong. Try Reinstalling.
pause