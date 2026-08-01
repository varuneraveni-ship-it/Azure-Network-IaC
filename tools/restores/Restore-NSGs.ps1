$BackupRoot = "C:\Projects\Azure-Network-IaC\backups\NSGs"

Write-Host ""
Write-Host "Available NSG Backups:"

Get-ChildItem $BackupRoot -Directory | Sort-Object Name

Write-Host ""

$BackupName = Read-Host "Enter Backup Folder Name"

$BackupFile = "$BackupRoot\$BackupName\NSGs.json"

if (Test-Path $BackupFile)
{
    Write-Host ""
    Write-Host "Backup Found"
    Write-Host $BackupFile

    $NSGs = Get-Content $BackupFile -Raw | ConvertFrom-Json

    Write-Host ""
    Write-Host "Backup Loaded Successfully"
    Write-Host "Objects Found: $($NSGs.Count)"
}
else
{
    Write-Host ""
    Write-Host "Backup Not Found"
}