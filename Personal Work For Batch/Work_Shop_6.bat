@echo off

goto :userinput

:main
echo "the inputted number:"%~1
goto :eof

:userinput 
set /P number1=please enter number
call :main %number1%

pause