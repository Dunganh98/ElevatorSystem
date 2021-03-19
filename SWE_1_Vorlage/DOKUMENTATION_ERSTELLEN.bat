cd /d %~dp0
cd html
mkdir myCode
cd ..
xcopy myCode html\myCode /s /e /i /y
xcopy textantworten.txt html  /y
xcopy errorLog.txt html  /y
cd doxygen
echo off
echo.
echo.
echo ########## DOXYGEN-COMPILERMELDUNGEN ##########
echo on
.\doxygen.exe doxygen_config.Doxyfile 
echo off
echo.
echo ########## ENDE DOXYGEN-COMPILERMELDUNGEN ##########
echo.
echo Pruefen Sie die Meldungen des Doxygen-Compilers (siehe oben). Die Generierung muss fehlerfrei funktioniert haben, sonst wurde keine neue Dokumentation erstellt!
echo.
pause