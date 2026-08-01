$Date = Get-Date -Format "yyyy-MM-dd-HHmm"

$BackupFolder = "C:\Projects\Azure-Network-IaC\backups\RouteTables\$Date"

New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

Get-AzRouteTable |
ConvertTo-Json -Depth 100 |
Out-File "$BackupFolder\RouteTables.json"

Write-Host ""
Write-Host "✅ Route Table Backup Completed" -ForegroundColor Green
Write-Host "Location: $BackupFolder"
Write-Host ""