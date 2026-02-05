param($file)

if (-not $file) {
    Write-Host "Usage: .\task1.ps1 filename"
    exit
}

if (-not (Test-Path $file)) {
    Write-Host "File does not exist."
    exit
}

$size = (Get-Item $file).Length
$limit = 1048576

if ($size -gt $limit) {
    Write-Host "Warning: File is too large."
} else {
    Write-Host "File size is within limits."
}
