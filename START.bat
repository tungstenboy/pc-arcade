@echo off
rem Version 1.3.5 rev 2
rem Added interaction

title PC-ARCADE copyright TungstenBoy
set snesPath=Emulators\SNES
set nesPath=Emulators\NES
set gbaPath=Emulators\VBA
set cps12NGPath=Emulators\CPS12NG

:romdirset
md roms
cd roms
md NES
md SNES
md GBA
md CPS12NG
cd..
echo RunOnce=1 > %dp%\save.dat
goto main

:main
cls
title Nice building
echo Welcome to the Arcade. Where do you want to go today?
echo 1. The Arcades
echo 2. Store
echo 3. About

echo X. Exit the arcade.
if not exist %dp%\save.dat goto romdirset
set /p entranceChoice=Choose wisely:
if %entranceChoice%==1 goto games
if %entranceChoice%==2 goto store
if %entranceChoice%==3 goto info
if %entranceChoice%==x goto bye
echo Wrong!
goto main

:games
cls
title You see other people of all ages in front of screens.
echo What do you want to play today?
echo 1. The NES
echo 2. The SNES (hope you got an external controller!)
echo 3. The Gameboy Advance (for poor keyboards)
echo 4. The CPS-1, 2, NeoGeo and related (in other words, the fighting ring)
echo B. Go back.
echo 
set /p arcadeChoice=Follow your path: 
if %arcadeChoice%==1 goto nesEmu
if %arcadeChoice%==2 goto snesEmu
if %arcadeChoice%==3 goto gbaEmu
if %arcadeChoice%==4 goto cps12ngEmu
if %arcadeChoice%==b goto main
echo Wrong!
goto games

:nesEmu
cls
echo You go to the NES arcade machine and you see something on the screen...
timeout /t 4
cd %nesPath% && start fceux.exe
timeout /t 3
echo Had enough? Press any key to back off this weird machine.
pause >nul
goto games

:snesEmu
cls
echo You go to the SNES arcade machine and you see something on the screen...
timeout /t 4
cd %snesPath% && start snes9x.exe
timeout /t 3
echo Had enough? Press any key to back off this button-ridden machine.
pause >nul
goto games

:gbaEmu
cls
echo You go to the idle Gameboy Advance console and you see something on the screen...
timeout /t 4
cd %gbaPath% && start visualboyadvance.exe
timeout /t 3
echo Had enough? Press any key to stand off this handheld cancer-maker.
pause >nul
goto games

:cps12ngEmu
cls
echo You go to the multitool-d arcade machine and you see something on the screen...
timeout /t 4
cd %cps12NGPath% && start WinKawaks.exe
timeout /t 3
echo Had enough? Press any key to back off this violent machine.
pause >nul
goto games

:store
cls
echo Welcome to the store!
echo Where do you want to go today? 
title Oh sh*t now imma gon have 30 trillion dollar lawsuit someone help me
echo 1. Browse and download roms
echo 2. Get more arcades
echo 3. Get cheats (coming soon)
echo X. Exit
set /p storeChoice=Go wisely: 
if %storeChoice%==1 goto romdownload
if %storeChoice%==2 goto comingsoon
if %storeChoice%==3 goto comingsoon
if %storeChoice%==x goto main

:romdownload
echo Press any key to go to the GDrive site where roms are available.
echo Rompacks by nblog.org
pause > nul
start "" https://drive.google.com/open?id=1bohPKRGEdRJxDE4sq0QsGTGSJ7Rv1oBo
echo Once you have downloaded the ROMs, make folders of the roms you have downloaded. Example:-
echo You downloaded SNES roms, so you make a folder called SNES in the 'roms' folder.
echo This is to ensure organisation.
echo Note: No need to extract the .zip files after extraction to get .nes or other files. You can play them as it is.
echo DO NOT RENAME CPS1, 2, and NEOGEO ROMS!
echo Press any key to go the store.
pause >nul
goto store

:comingsoon
cls
echo You just selected a feature which tungstenboy plans for in his next update.
echo If you want to support him for speeding his updates, become a patron on his Patreon channel.
pause
goto main

:info
cls
echo PC-ARCADE.
title About
echo Author: TungstenBoy. Copyright 2020.
echo This is a program designed to be a imperfect alternative to RetroArch.
echo Go to https://github.com/tungstenboy/pc-arcade to learn more.
echo This is his Patreon page: https://www.patreon.com/tungstenboy. Please donate!
pause
goto main

:bye
cls
title Arrivederci!
echo Bye! Hope to see you soon!
timeout /t 3
exit
