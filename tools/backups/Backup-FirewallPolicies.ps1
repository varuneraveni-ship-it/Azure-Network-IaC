$Date = Get-Date -Format "yyyy-MM-dd-HHmm"

$BackupFolder = "C:\Projects\Azure-Network-IaC\backups\FirewallPolicies\$Date"

New-Item -ItemType Directory -Path $BackupFolder -Force | Out-Null

# Export all firewall policies
Get-AzResource `
    -ResourceType "Microsoft.Network/firewallPolicies" |
ConvertTo-Json -Depth 100 |
Out-File "$BackupFolder\FirewallPolicies.json"

Write-Host ""
Write-Host "✅ Firewall Policy Backup Completed" -ForegroundColor Green
Write-Host "Location: $BackupFolder"
Write-Host ""