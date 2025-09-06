color 1f
cls

@echo off


echo " /$$$$$$  /$$       /$$$$$$$$  /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$ "
echo "/$$__  $$| $$      | $$_____/ /$$__  $$| $$$ | $$| $$_____/| $$__  $$"
echo "| $$  \__/| $$      | $$      | $$  \ $$| $$$$| $$| $$      | $$  \ $$"
echo "| $$      | $$      | $$$$$   | $$$$$$$$| $$ $$ $$| $$$$$   | $$$$$$$/"
echo "| $$      | $$      | $$__/   | $$__  $$| $$  $$$$| $$__/   | $$__  $$"
echo "| $$    $$| $$      | $$      | $$  | $$| $$\  $$$| $$      | $$  \ $$"
echo "|  $$$$$$/| $$$$$$$$| $$$$$$$$| $$  | $$| $$ \  $$| $$$$$$$$| $$  | $$"
echo "\______/ |________/|________/|__/  |__/|__/  \__/|________/|__/  |__/"                                                                     
                                                                      
echo off

echo off

echo off


:: Verifica se il file è in esecuzione come amministratore
openfiles >nul 2>&1
if '%errorlevel%' NEQ '0' (
    :: Non siamo amministratori, chiediamo l'elevazione
    echo Richiesta dei privilegi di amministratore...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~dp0%~nx0' -Verb RunAs"
    exit /b
)

:: Inserisci qui i comandi del tuo script originale
:: ----- Inizio script originale -----

REM Start of Cleaner.bat content

del /s /q "%localappdata%\NVIDIA\DXCache
del /s /q "%localappdata%\NVIDIA\GLCache
cd %temp%
del /f /s /q *.*
cd %windir%\temp
del /f /s /q *.*
cd %windir%\Prefetch
del /f /s /q *.*

:: Pulizia del Cestino
rd /s /q C:\$Recycle.Bin

pause

:: ----- Fine script originale -----
