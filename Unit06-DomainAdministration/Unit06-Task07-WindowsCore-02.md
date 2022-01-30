---
title: \[OpenLDAP\] - Windows 2019 - Server Core II
subtitle: "Unit 06"
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

# Tasks: 

Using the info that you will find at this WebPage:

[https://docs.microsoft.com/en-us/windows-server/administration/server-core/what-is-server-core](https://docs.microsoft.com/en-us/windows-server/administration/server-core/what-is-server-core)

Using the Virtual Machine with Windows 2019 Server - Core and the others machines of your *domain*:

Set the next values in your Machines:

| Parameters | Value |
|------------|-------|
| Hostname | windowscore | 
| DNS Name | windowscore.smx2021.net|
| IP | 192.168.42.55 | 

## Task 01 : Manage your Windows Core from the Windows 10 Machine

Using the info that you will find at this WebPage:

- [PowerShell Remoting](https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/08-powershell-remoting?view=powershell-7.2)

Configure the Windows Server core to accept the PowerShell Remote Execution.

Code a simple shell script that displays an alert message on the Windows Server Core and after 10 seconds send the reboot command.

Upload it to Aules with an screenshot of the result.

## Task 02 : Update all your machines.

Create a PowerShell script that when it will be runned at the Windows 10 Machine, update everything in windows 10 system and Windows Server Core.

Upload it to Aules.

## Task 03 : Update all your machines.

In your GNU/LinuX systems, please update everything (in the current Ubuntu Release Focal Fossa).

Upload an screenshot of message that `Everything is updated`

