Set-ExecutionPolicy Bypass Process
Set-ExecutionPolicy Bypass -Scope Process
Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
