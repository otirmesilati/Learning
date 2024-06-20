@echo off 

cd %SYSTEMROOT%

echo "CMD path below"

echo %COMSPEC%

set statement1="This is the first statement"
set statement2="This is the second statement"

set statement3=%statement1% %statement2% 

echo %statement3%

set sum=10+10
::this will generate a string

set /a sum=10+10
::this will do what we wanted

echo %sum%

echo "please enter a name"
set /p name=

echo "and now please enter a number"

pause