@echo off

:em
title activity2.2

echo Folder Organizer
echo 1. Creat Folder
echo 2. Delete Folder
echo 3. Rename Folder
echo.
echo Enter your choice.
set /p choice=

:choice
if %choice%==1 (
echo You choose Creat Folder. . 
echo file name:
set /p name=
md %name%
cls
goto cre
)
if %choice%==2 (
echo You choose Delete Folder. . 
dir
echo folder name:
set /p name=
goto del
)
if %choice%==3 (
echo You choose Rename Folder. . 
echo folder name:
set /p name=
echo rename:
set /p rn=
goto re
) else (
echo invalid!!!
cls
goto em

:cre
md %name%
cls
goto em

:del
echo you want to delete ? (y/n)
set /p de=
if %de%==y (
rd %name%
cls
goto em
) else (
cls
goto em
)

:re
echo.
ren %name% %rn%
cls
goto em