@ehco off

dir c:\

vol d:

goto :fun2

:fun1
echo "hi"
timeout 15
exit 

:fun2
echo "bye"

call :fun1


pause