@echo off

:: Usual Starting position

echo Starting procedure:

start Desktop
start chrome.exe
start githubdesktop.exe
start eclipse.exe
start pycharm64.exe
start code.exe

:: probably not going to input arguments for 
:: priority (self manage scheduler) and window size
:: diffrentiation (opening last conf size probably best) 

systeminfo
tasklist
cls

:: networking
echo %computername%
ping google.com
ping /4 google.com 
:: pinging with IPV4 - preaty similar to defualt
ping /n 9 google.com
ping google.com -t 
::CTRL+C to stop run and regain user control 
ipconfig 
ipconfig /all
arp -a

:: no need to pause on scripts