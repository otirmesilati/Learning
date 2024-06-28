@echo off

goto :userinput

:main
echo "the inputted number:"%~1 and %~2
goto :eof

:userinput 
set /P number1=please enter number
call :main 60 90


:displayname
set /P my_name=Enter your name
echo Your name is %my_name%

pause
