---
title: Unit 02 - SimpleScan
subtitle: "Unit 02"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Introduction

With the previous classroom explanation, code the next scripts:

# Script 01

We are the `sysadmins` of the *Mr.Yellow Software and Systems*, a Software enterprise that supports several environments...As we will see along this course.

We just discover that the Scite Text editor at the 4.9 version (and below), has a dangerous vulnerability. But we don't know if the Software is installed in every Windows 10 machine.

Code a Shell Scripts that performs the next operations:

- Test if Scite is installed 
- If it is installed if the version installed is below 5.0
- If this is true, the script must show an Alert Message
```PowerShell
Write-Host (" WARNING Vulnerability Detected" )
```
- If the version is above 5.0 (or equal), the script must show a Tranquility message
```PowerShell
Write-Host ("Everything is fine ^_^ ")
```
- If the scite is not installing the script must indicate that situation (for now).
```PowerShell
Write-Host (" SCITE is not installed" )
```

## Tips

Some useful values:

The next key stores all software that could be uninstalled.
```registry
HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*
```

# Script 02

Modify the previous script for using variables to install the Scite if the version is below the 5.0 or it remains uninstalled.

The variable name must be: `$msiSciteInstaller` and must contain the *absolute* path to the Scite installer. 

# Script 03

Modify the previous script (Script 02) to asking the user if the software is installed and it's version is above 5.0 in order to perform a clean reinstallation of Scite.

# Script 04

Using the info in this webpage:

https://stackoverflow.com/questions/32354861/how-to-find-the-default-browser-via-the-registry-on-windows-10

Code a PowerShell Script that performos the next checks:

- if Firefox is not the default browser displays a message.
```PowerShell
Write-Host (" Mozilla Firefo is not  the default" )
```
- if Edge is not the default browser displays a message.
```PowerShell
Write-Host (" Edge is not  the default" )
```
- if Google Chrome is not the default browser displays a message.
```PowerShell
Write-Host (" Google Chrome is not  the default" )
```

# Script 05 

Test if the info of this page is telling the truth.

https://www.c-sharpcorner.com/article/set-default-browser-to-microsoft-edge-using-powershell/

Use the info to set the default browser to Edge ( xD ).


