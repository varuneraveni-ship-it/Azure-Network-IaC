$outputFolder = "../../modules/NSGs/exports"

New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

$nsgs = Get-AzNetworkSecurityGroup

foreach ($nsg in $nsgs)
{
    $fileName = "$($nsg.Name).json"

    $nsg | ConvertTo-Json -Depth 20 |
    Out-File "$outputFolder/$fileName"
}

Write-Host "NSG export completed successfully!" -ForegroundColor Green