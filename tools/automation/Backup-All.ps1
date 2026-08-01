Write-Host ""
Write-Host "Starting LADBS Network Backup..."
Write-Host ""

& "$PSScriptRoot\..\backups\Backup-FirewallPolicies.ps1"

& "$PSScriptRoot\..\backups\Backup-FrontDoor.ps1"

& "$PSScriptRoot\..\backups\Backup-NSGs.ps1"

& "$PSScriptRoot\..\backups\Backup-RouteTables.ps1"

& "$PSScriptRoot\..\backups\Backup-ApplicationGateways.ps1"

Write-Host ""
Write-Host "All Backups Completed Successfully" -ForegroundColor Green
Write-Host ""