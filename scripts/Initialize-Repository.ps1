$root = "$PSScriptRoot\..\modules"

$modules = @(
    "VNets",
    "NSGs",
    "RouteTables",
    "ApplicationGateways",
    "LoadBalancers",
    "FrontDoor",
    "FirewallPolicies",
    "PrivateDNS",
    "PrivateEndpoints",
    "VirtualWAN",
    "VirtualHubs",
    "Bastion"
)

foreach ($module in $modules) {

    $modulePath = Join-Path $root $module

    New-Item -ItemType Directory -Path $modulePath -Force | Out-Null

    if ($module -eq "FrontDoor" -or $module -eq "FirewallPolicies") {

        New-Item -ItemType Directory -Path "$modulePath\exports" -Force | Out-Null
        New-Item -ItemType Directory -Path "$modulePath\snapshots" -Force | Out-Null

        New-Item -ItemType File -Path "$modulePath\README.md" -Force | Out-Null
    }
    else {

        New-Item -ItemType Directory -Path "$modulePath\exports" -Force | Out-Null

        New-Item -ItemType File -Path "$modulePath\README.md" -Force | Out-Null
        New-Item -ItemType File -Path "$modulePath\main.bicep" -Force | Out-Null
        New-Item -ItemType File -Path "$modulePath\main.bicepparam" -Force | Out-Null
    }
}

Write-Host "Repository structure created successfully!" -ForegroundColor Green