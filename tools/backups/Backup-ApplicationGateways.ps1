$Date = Get-Date -Format "yyyy-MM-dd-HHmm"

$BackupFolder = "C:\Projects\Azure-Network-IaC\backups\ApplicationGateways\$Date"

New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

Get-AzApplicationGateway |
ConvertTo-Json -Depth 100 |
Out-File "$BackupFolder\ApplicationGateways.json"

Write-Host ""
Write-Host "✅ Application Gateway Backup Completed" -ForegroundColor Green
Write-Host "Location: $BackupFolder"
Write-Host ""