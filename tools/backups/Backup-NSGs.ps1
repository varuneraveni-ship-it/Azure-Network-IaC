$Date = Get-Date -Format "yyyy-MM-dd-HHmm"

$BackupFolder = "C:\Projects\Azure-Network-IaC\backups\NSGs\$Date"

New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

Get-AzNetworkSecurityGroup |
ConvertTo-Json -Depth 100 |
Out-File "$BackupFolder\NSGs.json"

Write-Host ""
Write-Host "✅ NSG Backup Completed" -ForegroundColor Green
Write-Host "Location: $BackupFolder"
Write-Host ""