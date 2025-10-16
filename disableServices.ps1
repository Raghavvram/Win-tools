# Script to disable unnecessary Windows services and improve performance

$services = @(
    "CertPropSvc" # Certificates Propagation Service
    "diagnosticshub.standardcollector.service" # Microsoft Diagnostics Hub Standard Collector Service
    "DiagTrack" # Diagnostics Tracking Service
    "DPS" # Diagnostic Policies Service
    "dmwappushservice" # WAP Push Message Routing Service
    "iphlpsvc" # Auxiliar IP App
    "lfsvc" # Geolocation Service
    "lmhosts" # NetBIOS over TCP/IP Auxiliar App
    "MapsBroker" # Downloaded Maps Manager
    "MSiSCSI" # Microsoft iSCSI Initatior Service
    "Netlogon" # NetLogon Service
    "PcaSvc" # Compatibility Programs Assistant Service
    "RemoteRegistry" # Remote Registry
    "RemoteAccess" # Routing and Remote Access
    "RpcLocator" # Remote Procedure Call Locator
    "SCardSvr" # Smart card
    "SCPolicySvc" # Smart card Extraction Policy Service
    "SharedAccess" # Internet Connection Sharing (ICS)
    "SNMPTRAP" # SNMP Capture Service
    "Spooler" # Print Spooler Service
    "stisvc" # Windows Image acquisition (WIA) Service
    "TabletInputService" # Handwriting Panel and touch keyboard Service
    "TrkWks" # Distributed Link Tracking Client
    "WbioSrvc" # Windows Biometric Service
    "WlanSvc" # WLAN AutoConfig
    "WMPNetworkSvc" # Windows Media Player Network Sharing Service
    "WSearch" # Windows Search
)

foreach ($service in $services) {
    Write-Output "Trying to disable $service"
    Get-Service -Name $service | Set-Service -StartupType Disabled
    Write-Output "$service disabled"
}
