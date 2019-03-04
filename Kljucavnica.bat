 cls
@ECHO OFF
title Folder Skrivna_mapa
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Skrivna_mapa goto MDSkrivna_mapa
:CONFIRM
echo Ste prepricani da zelite skriti mapo? (DA/NE)
set/p "cho=>"
if %cho%==Da goto LOCK
if %cho%==da goto LOCK
if %cho%==DA goto LOCK
if %cho%==ne goto END
if %cho%==Ne goto END
if %cho%==NE goto END
echo Napaèna izbira.
goto CONFIRM
:LOCK
ren Skrivna_mapa "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Mapa je skrita in zascitena s geslom
goto End
:UNLOCK
echo Vnesite geslo za odklep mape
set/p "pass=>" 
if NOT %pass%==123 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Skrivna_mapa
echo Mapa je bila odklenjena uspesno!
goto End
:FAIL
echo Napaèno geslo
goto end
:MDSkrivna_mapa
md Skrivna_mapa
echo Mapa za skrito shranjevanje je bila kreirana uspesno!
goto End
:End
