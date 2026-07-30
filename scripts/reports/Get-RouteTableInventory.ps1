$outputFile = "../../docs/Inventory/RouteTable-Inventory.csv"

Get-AzRouteTable |
Select-Object `
Name,
ResourceGroupName,
Location,
ProvisioningState,
DisableBgpRoutePropagation |
Export-Csv $outputFile -NoTypeInformation

Write-Host "Route Table Inventory Created Successfully" -ForegroundColor Green