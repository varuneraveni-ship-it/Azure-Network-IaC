$outputFile = "../../docs/Inventory/NSG-Inventory.csv"

Get-AzNetworkSecurityGroup |
Select-Object `
Name,
ResourceGroupName,
Location,
ProvisioningState |
Export-Csv $outputFile -NoTypeInformation

Write-Host "NSG Inventory Created Successfully" -ForegroundColor Green