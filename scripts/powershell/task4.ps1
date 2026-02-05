Get-ChildItem *.txt | ForEach-Object {
    Rename-Item $_.Name ("OLD_" + $_.Name)
}

Write-Host "All .txt files renamed."
