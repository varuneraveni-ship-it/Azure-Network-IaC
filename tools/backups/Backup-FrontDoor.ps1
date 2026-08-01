$Date = Get-Date -Format "yyyy-MM-dd-HHmm"

$BackupFolder = "C:\Projects\Azure-Network-IaC\backups\FrontDoor\$Date"

New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

Get-AzResource `
    -ResourceType "Microsoft.Cdn/profiles" |
ConvertTo-Json -Depth 100 |
Out-File "$BackupFolder\FrontDoorProfiles.json"

Write-Host ""
Write-Host "✅ Front Door Backup Completed" -ForegroundColor Green
Write-Host "Location: $BackupFolder"
Write-Host ""