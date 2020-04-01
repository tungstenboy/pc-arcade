@echo off
rem Version 1.0 rev 4
rem Support for SNES, NES, GBA, and CPS1.

set snesEmu=.\SNES\snes9x.exe
set nesPath=.\NES\fceux.exe
set gbaPath=.\VBA\VisualBoyAdvance.exe
set cps1Path=.\CPS1\fba.exe
:question
cls
echo What do you want to play today?
echo 1. NES
echo 2. SNES
echo 3. GameBoy Advance
echo 4. CPS-1
set /p Initialchoice=Your Choice: 
if %Initialchoice%==1 goto nesSelect
if %Initialchoice%==2 goto snesSelect
if %Initialchoice%==3 goto gbaSelect
if %Initialchoice%==4 goto cps1Select
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

:cps1Select

start %cps1Path%
echo Do you want to play a different emulated game?
set /p Nextchoice=Your choice: 
if %Nextchoice%==y goto question
exit