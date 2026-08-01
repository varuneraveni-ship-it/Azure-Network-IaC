# =====================================================
# Restore-NSGs.ps1
# LADBS Azure Network IaC
# =====================================================

$BackupRoot = "C:\Projects\Azure-Network-IaC\backups\NSGs"

Write-Host ""
Write-Host "===================================="
Write-Host "      NSG Restore Framework"
Write-Host "===================================="
Write-Host ""

Write-Host "Available NSG Backups:"
Write-Host ""

Get-ChildItem $BackupRoot -Directory |
Sort-Object Name |
Format-Table Name

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

    Write-Host ""
    Write-Host "===================================="
    Write-Host "NSGs Found In Backup"
    Write-Host "===================================="
    Write-Host ""

    $NSGs |
    Select-Object Name, ResourceGroupName |
    Format-Table

    Write-Host ""

    $SelectedNSG = Read-Host "Enter NSG Name"

    Write-Host ""
    Write-Host "You Selected:"
    Write-Host $SelectedNSG

    $NSGDetails = $NSGs | Where-Object {
        $_.Name -eq $SelectedNSG
    }

    if ($NSGDetails)
    {
        Write-Host ""
        Write-Host "===================================="
        Write-Host "NSG Details"
        Write-Host "===================================="
        Write-Host ""

        Write-Host "Name:"
        Write-Host $NSGDetails.Name

        Write-Host ""

        Write-Host "Resource Group:"
        Write-Host $NSGDetails.ResourceGroupName

        Write-Host ""

        Write-Host "Location:"
        Write-Host $NSGDetails.Location

        Write-Host ""

        Write-Host "Provisioning State:"
        Write-Host $NSGDetails.ProvisioningState

        Write-Host ""

        Write-Host "Restore Preview Complete"
        Write-Host ""
        Write-Host "No Azure changes have been made."
        Write-Host ""
    }
    else
    {
        Write-Host ""
        Write-Host "NSG Not Found In Backup"
        Write-Host ""
    }
}
else
{
    Write-Host ""
    Write-Host "Backup Not Found"
    Write-Host ""
}