Set-ExecutionPolicy Bypass Process
Set-ExecutionPolicy Bypass -Scope Process
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
Get-AppxPackage -AllUsers | Remove-AppxPackage
