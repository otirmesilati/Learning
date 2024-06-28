@echo off

:main
echo "the inputted number:"%~1

:userinput 
set /P number1=please enter number
call :main %number1%

pause