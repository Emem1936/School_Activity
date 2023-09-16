@echo off
echo Registration
echo Enter your name:
set /p name=
echo.
echo Enter your username:
set /p username=
echo.
echo Enter your password:
set /p password=
:begin
echo.
echo Enter username:
set /p username1=
if %username%==%username1% (
echo Access Granted!
echo.
) else (
echo Access Denied!
goto begin
)
echo Enter password:
set /p password1=
if %password%==%password1% (
echo Access Granted!
echo.
) else (
echo Access Denied!
goto begin
)
echo Congrats, %name%! You are successfully Logged In!
pause
)
echo Enter Balance:
set /p bal=
echo.
echo A. Withdraw
echo B. Inquire Balance
echo C. Deposit
echo D. Quit
echo.
echo Enter your Choice:
set /p choice=
echo.

if %choice%==%withdraw% (
echo Enter amount to withdraw:
set /p amount=

if %amount% geq %bal% (
echo NOT ENOUGH BALANCE!
pause
echo.
goto begin1

) else (
set /a Totalamount



