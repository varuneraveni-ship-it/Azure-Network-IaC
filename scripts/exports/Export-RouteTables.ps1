$outputFolder = "../../modules/RouteTables/exports"

New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

$routeTables = Get-AzRouteTable

foreach ($routeTable in $routeTables)
{
    $fileName = "$($routeTable.Name).json"

    $routeTable | ConvertTo-Json -Depth 20 |
    Out-File "$outputFolder/$fileName"
}

Write-Host "Route Table export completed successfully!" -ForegroundColor Green