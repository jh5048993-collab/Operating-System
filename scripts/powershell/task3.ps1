$logfile = "server.log"

if (!(Test-Path $logfile)) {
    Write-Host "server.log not found"
    exit
}

$count = Select-String "Error" $logfile | Measure-Object | Select -ExpandProperty Count
Write-Host "Lines containing 'Error': $count"
