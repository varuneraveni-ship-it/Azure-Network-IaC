# Network Architecture

## Purpose

Document Azure network topology and design.

## Components

- Virtual WAN
- Virtual Hubs
- VNets
- NSGs
- Route Tables
- Azure Firewalls
- Private DNS Zones
- Private Endpoints
- Load Balancers
- Application Gateways
- Front Door

## High Level Design

Hub and Spoke Architecture

Virtual WAN
│
├── Virtual Hub
│
├── Azure Firewall
│
├── Production VNets
│
├── Shared Services VNets
│
└── Management VNets
