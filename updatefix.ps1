﻿Set-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name WUServer -Value "https://windowsupdate.microsoft.com"
Set-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name WUStatusServer -Value "https://windowsupdate.microsoft.com"
Set-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name DoNotConnectToWindowsUpdateInternetLocations -Value "0"