Set-ExecutionPolicy Bypass Process
Set-ExecutionPolicy Bypass -Scope Process
$manifest = (Get-AppxPackage Microsoft.WindowsStore).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest