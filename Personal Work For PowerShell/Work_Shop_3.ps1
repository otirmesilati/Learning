# Setting up the basics

Start-Process Code.exe

# Printing some of the host's local data 

Set-Location ~

timedate.cpl
Get-TimeZone

Get-Service Spooler

ipconfig

Write-output Outputting the macros: 

Write-Output $Env:USERNAME
Write-Output $Env:COMPUTERNAME
Write-Output $Env:HOMEDRIVE
Write-Output $Env:HOMEPATH
Write-Output $Env:WINDIR
Write-Output $Env:SYSTEMDRIVE

arp -a

pause 