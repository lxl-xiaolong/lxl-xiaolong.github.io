Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
