$outputFolder = "../../modules/VirtualWAN/exports"

New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

$virtualWANs = Get-AzVirtualWan

foreach ($virtualWAN in $virtualWANs)
{
    $fileName = "$($virtualWAN.Name).json"

    $virtualWAN | ConvertTo-Json -Depth 20 |
    Out-File "$outputFolder/$fileName"
}

Write-Host "Virtual WAN export completed successfully!" -ForegroundColor Green