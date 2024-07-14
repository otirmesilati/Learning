# Printing some of the host's local data 

Write-Output $Env:USERNAME
Write-Output $Env:COMPUTERNAME
Write-Output $Env:HOMEDRIVE
Write-Output $Env:HOMEPATH
Write-Output $Env:WINDIR
Write-Output $Env:SYSTEMDRIVE

arp -a

pause 