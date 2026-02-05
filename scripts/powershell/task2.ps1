Write-Host "Top 5 Memory-Consuming Processes"
Write-Host "--------------------------------"

Get-Process | Sort-Object WS -Descending | Select-Object -First 5 Name, Id, WS
