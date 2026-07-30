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
            AddressPrefix = ($subnet.AddressPrefix -join ",")
        }
    }
} |
Export-Csv "../../docs/inventory/Subnet-Inventory.csv" -NoTypeInformation

Write-Host "Subnet Inventory Created" -ForegroundColor Green