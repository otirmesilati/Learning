# Printing some of the host's local data 



timedate.cpl
Get-TimeZone

Get-Service Spooler

Write-output Outputting the macros: 

Write-Output $Env:USERNAME
Write-Output $Env:COMPUTERNAME
Write-Output $Env:HOMEDRIVE
Write-Output $Env:HOMEPATH
Write-Output $Env:WINDIR
Write-Output $Env:SYSTEMDRIVE

arp -a

pause 