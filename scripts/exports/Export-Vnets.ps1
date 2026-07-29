$outputFolder = "../../modules/VNets/exports"

New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

$vnets = Get-AzVirtualNetwork

foreach ($vnet in $vnets)
{
    $fileName = "$($vnet.Name).json"

    $vnet | ConvertTo-Json -Depth 20 |
    Out-File "$outputFolder/$fileName"
}

Write-Host "VNet export completed successfully!" -ForegroundColor Green