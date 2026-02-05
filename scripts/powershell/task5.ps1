Write-Host "System Health Report"
Write-Host "----------------------"
Write-Host "Date:" (Get-Date)
Write-Host "Hostname:" $env:COMPUTERNAME
Write-Host "User:" $env:USERNAME
Write-Host "Disk Usage:"

Get-PSDrive C
