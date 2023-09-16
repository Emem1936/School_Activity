@echo off
color 0a
echo Registration
echo.
echo Enter Name:
set /p name= 
echo.
echo Create User:
set /p user= 
echo Create Password:
set /p password= 

echo.
echo Your user is %user%
echo Your password is %password%
echo.
echo You had been Registered
pause

:begin
cls
echo.
echo Enter 
set /p eu= User: 
if %eu%== %user% (
echo Access Granted!
echo.
) else (
echo Access Denied!!
echo.
) 
echo Enter 
set /p ep= Password: 
if %ep% == %password%  (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
goto next
pause
) else (
echo Access Denied!!
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
goto begin
echo.
)

:next
echo.
echo %name%
echo.
echo You are Succesfully Log In
echo.

:ball
echo.
echo Enter 
set /p bal= Balance: 
cls

:trans
cls
echo Your Balance is %bal%
echo.
echo A. Withdraw
echo B. Inquire Balance
echo C. Deposit
echo D. Quit
echo. 
echo Choose Transaction
set /p tr=
if '%tr%' == 'A' goto Withdraw
if '%tr%' == 'a' goto Withdraw
if '%tr%' == 'B' goto Inquire
if '%tr%' == 'b' goto Inquire
if '%tr%' == 'C' goto Deposit
if '%tr%' == 'c' goto Deposit
if '%tr%' == 'D' goto Quit
if '%tr%' == 'd' goto Quit (
) else (
	goto trans
)

:Withdraw
echo.
echo Enter
set /p amount= Amount: 

:and
if %amount% Lss %bal% goto Withdraw2
if %amount% GEQ %bal% (
echo.
echo You Don't have enough Balance !
echo.
echo Your Money is to low for this transaction 
echo.
echo try it again . . . 
ping localhost -n 2 >nul
goto trans
)

:Withdraw2
echo.
set /a bal -= %amount%
echo your balance is %bal%
echo.
pause
goto trans

:Inquire
echo.
echo Your balance is %bal%
echo.
pause
goto trans

:Deposit
echo.
echo Enter
set /p amount= Amount: 
set /a bal += %amount%
echo.
echo your balance is %bal%
echo.
pause
goto trans

:Quit
echo. Thankyou 
pause
exit