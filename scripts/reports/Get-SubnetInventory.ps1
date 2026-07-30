$outputFile = "../../docs/Inventory/Subnet-Inventory.csv"

Get-AzVirtualNetwork |
ForEach-Object {

    $vnet = $_

    foreach ($subnet in $vnet.Subnets)
    {
        [PSCustomObject]@{
            VNetName      = $vnet.Name
            ResourceGroup = $vnet.ResourceGroupName
            Location      = $vnet.Location
            SubnetName    = $subnet.Name
            AddressPrefix = ($subnet.AddressPrefix -join ", ")
        }
    }

} |
Export-Csv $outputFile -NoTypeInformation

Write-Host "Subnet Inventory Created Successfully" -ForegroundColor Green