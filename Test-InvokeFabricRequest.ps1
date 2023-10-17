$currentPath = (Split-Path $MyInvocation.MyCommand.Definition -Parent)

Set-Location $currentPath

Import-Module ".\FabricPS-PBIP.psm1" -Force

Invoke-FabricAPIRequest -uri "workspaces"

Set-FabricAuthToken -reset

Invoke-FabricAPIRequest -uri "workspaces"