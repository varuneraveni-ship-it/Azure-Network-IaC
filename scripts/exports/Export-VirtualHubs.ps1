$outputFolder = "../../modules/VirtualHubs/exports"

New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

$virtualHubs = Get-AzVirtualHub -ResourceGroupName "rg-network"

foreach ($virtualHub in $virtualHubs)
{
    $fileName = "$($virtualHub.Name).json"

    $virtualHub | ConvertTo-Json -Depth 20 |
    Out-File "$outputFolder/$fileName"
}

Write-Host "Virtual Hub export completed successfully!" -ForegroundColor Green