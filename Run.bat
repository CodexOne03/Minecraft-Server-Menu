@echo off
:starterrs
pause
cls
start D:\Programmi\NoIp\No-IP\DUC40.exe
echo **************************
echo Lingua-Language:
echo 1 -Italiano
echo 2 -English
echo **************************
set /p Languageg=--^>
if "%Languageg%" == "1" goto :ita
if "%Languageg%" == "2" goto :eng
if NOT "%Languageg%" == "italiano" OR "english" goto :starterrs
:ita
for /f "delims=" %%x in (jar.txt) do set build=%%x

SET y=%~dp0
goto :Fermo

:ServerIT
cls
java -jar %build%
pause

:Fermo
echo **************************
echo Seleziona cosa deve fare il programma:
echo 1 -Chiudi
echo 2 -Riavvia
echo 3 -Apri la cartella del server
echo 4 -Accedi alle impostazioni generali
echo **************************

set /p Restart=--^>
if "%Restart%" == "1" goto :Stop
if "%Restart%" == "2" goto :RestartIT
if "%Restart%" == "3" goto :Dir
if "%Restart%" == "4" goto :impostazioni

:impostazioni
cls
echo **************************
echo Seleziona l'impostazione che vuoi modificare:
echo 1 -Allocazione della ram
echo 2 -Lingua
echo 3 -Torna al menu principale
echo **************************

set /p Settings=--^>
if "%Settings%" == "1" goto :ImpRAM
if "%Settings%" == "2" goto :Lingua
if "%Settings%" == "3" goto :Fermo

:ImpRAM
echo Al momento questa funzione non e' disponibile
pause
goto :impostazioni

:Lingua
goto starterrs

:Dir
echo **************************
echo Apro la cartella principale del server
echo **************************
%SystemRoot%\explorer.exe "%y%"
timeout 1
cls
goto :Fermo

:RestartIT
echo **************************
echo Riavvio il server
echo **************************
timeout 1
cls
goto :ServerIT

:Stop
echo **************************
echo Fermo il programma
echo **************************
timeout 1
cls
goto :end

:eng
:For
for /f "delims=" %%x in (jar.txt) do set build=%%x

:Fol
SET y=%~dp0
goto :Stopped

:Server
cls
java -jar %build%
pause

:Stopped
echo **************************
echo Select what the program have to do:
echo 1 -Stop
echo 2 -Restart
echo 3 -Open Server Directory
echo 4 -Access to the settings
echo **************************

set /p Restart=--^>
if "%Restart%" == "1" goto :Stop
if "%Restart%" == "2" goto :Restart
if "%Restart%" == "3" goto :Dir
if "%Restart%" == "4" goto :settings

:settings
cls
echo **************************
echo Select wich setting you want to modify:
echo 1 -RAM Allocating
echo 2 -Language
echo 3 -Return to the main menu
echo **************************

set /p Settings=--^>
if "%Settings%" == "1" goto :RAMSet
if "%Settings%" == "2" goto :Language
if "%Settings%" == "3" goto :Stopped

:RAMSet
echo At the moment this function isn't available
pause
goto :settings

:Language
goto starterrs

:Dir
echo **************************
echo Opening Server Main folder
echo **************************
%SystemRoot%\explorer.exe "%y%"
timeout 1
cls
goto :Stopped

:Restart
echo **************************
echo Restarting the Server
echo **************************
timeout 1
cls
goto :Server

:Stop
echo **************************
echo Stopping the program
echo **************************
timeout 1
cls
goto :end

:end
pause