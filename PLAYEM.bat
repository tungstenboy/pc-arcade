@echo off
rem Version 1.5 rev 2
rem Support for SNES, NES, GBA, and CPS1. 1 April 2020. Released on GitHub at: https://github.com/tungstenboy/pc-arcade

rem Changelogs: Supports SNES, NES, GBA and CPS1. Released 31 March 2020.

set snesEmu=.\SNES\snes9x.exe
set nesPath=.\NES\fceux.exe
set gbaPath=.\VBA\VisualBoyAdvance.exe
set cps12NGPath=.\CPS12NG\WinKawaks.exe
:question
cls
echo What do you want to play today?
echo 1. NES
echo 2. SNES
echo 3. GameBoy Advance
echo 4. CPS-1, CPS-2, Neo Geo, etc.
set /p Initialchoice=Your Choice: 
if %Initialchoice%==1 goto nesSelect
if %Initialchoice%==2 goto snesSelect
if %Initialchoice%==3 goto gbaSelect
if %Initialchoice%==4 goto cps12NGSelect
exit

:snesSelect

start %snesEmu%
echo Do you want to play a different emulated game?
set /p Nextchoice=Your choice: 
if %Nextchoice%==y goto question
exit 

:nesSelect

start %nesPath%
echo Do you want to play a different emulated game?
set /p Nextchoice=Your choice: 
if %Nextchoice%==y goto question
exit

:gbaSelect

start %gbaPath%
echo Do you want to play a different emulated game?
set /p Nextchoice=Your choice: 
if %Nextchoice%==y goto question
exit

:cps12NGSelect

start %cps12NGPath%
echo Do you want to play a different emulated game?
set /p Nextchoice=Your choice: 
if %Nextchoice%==y goto question
exit