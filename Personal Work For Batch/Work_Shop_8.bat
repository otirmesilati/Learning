@echo off

:: Usual Starting position

echo Starting procedure:

start Desktop
start chrome.exe
start githubdesktop.exe
start eclipse.exe
start pycharm64.exe
start code.exe

:: about the start flags/options:
:: probably not going to input arguments for 
:: priority (self manage scheduler) and window size
:: diffrentiation (opening last conf size probably best) 

:: notepad
start notepad


::  Environment variables
echo %username%

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

:: some classics - playing with test folders
cd .. ; cd "test_folder_2" 
:: changing fromfolder 1 to folder 2
echo. 2>folder_2_text_1.txt
:: creating an empty text folder (echo. for 
:: new line, 2 for err stream, and the file name)
copy folder_2_text_1.txt "C:\Users\otirm_2hwnj4i\desktop\explorer testing\test_folder_1" 
:: copying a file to another folder