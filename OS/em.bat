@echo off

:em
title activity2

echo App Organizer
echo 1. notepad
echo 2. mspaint
echo 3. winword
echo 4. powerpoint
echo 5. excel
echo 6. notepad++
echo 7. photoshop
echo 8. wordpad
echo 9. Calculator
echo 10. Google Chrome
echo.
echo Enter your choice.
set /p choice=

if %choice%==1 (
echo You choose Notepad. . .
start notepad.exe
pause
cls
goto em
)
if %choice%==2 (
echo You choose mspaint. . .
start mspaint.exe
pause
cls
goto em
)
if %choice%==3 (
echo You choose winword. . .
start winword.exe
pause
cls
goto em
)
if %choice%==4 (
echo You choose powerpnt. . .
start powerpnt.exe
pause
cls
goto em
)
if %choice%==5 (
echo You choose excel. . .
start excel.exe
pause
cls
goto em
)
if %choice%==6 (
echo You choose notepad++. . .
start notepad++.exe
pause
cls
goto em
)
if %choice%==7 (
echo You choose photoshop. . .
start photoshop.exe
pause
cls
goto em
)
if %choice%==8 (
echo You choose wordpad. . .
start wordpad.exe
pause
cls
goto em
)
if %choice%==9 (
echo You choose Calculator. . .
start calc.exe
pause
cls
goto em
)
if %choice%==10 (
echo You choose Google Chrome. . .
start chrome.exe
pause
cls
goto em
) else (
echo invalid!!!
echo choose again. . . 
pause
cls
goto em
)
exit


