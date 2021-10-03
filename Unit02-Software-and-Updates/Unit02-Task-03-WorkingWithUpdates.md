---
title: \[Task 03\] - Working with Updates
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

Code several scripts about Windows Updates. Everyscript must be named as follows:


- `task03-script01.ps1`
- `task03-script02.ps1`
- `task03-script03.ps1`
- ...
  
# Script 01 (1p)

Code a PowerShell script list the Windows Updates installed.

# Script 02 (1p)

Code a PowerShell Script that accepts as the first argument a *word* and list the Updates that contains this word in their description.

# Script 03 (1p)

Code a PowerShell Script that download and install the possible Updates from Microsoft (`like apt full-upgrade` but in poor way).

# Script 04 (3p)

Code a PowerShell Script that takes the argument given (a number between 2 and 100) and checks if the **TOTAL UPDATES** installed on the system is below, equal or higher than this number given. 

The script must:
    - Check if the argument is a number.
    - if the number is > 2 and <= 100.
    - Count the total updates installed.
    - Displays a message with the info.

\newpage
# Script 05 (4p)

Today is a another day at  *Mr.Yellow Software and Systems*, and the Boss just discover that we need to create a Folder in the Windows Systems in order to storing all the installers (`.msi`) that will be used at the machines. Also, we need to test that no other files except installers will be present at this folder (and subfolders). 

Code a PowerShell script that (for now):

- Test if the folder `C:\MrYellow\Installers` is created, and if not exists, create it.
- Check that in this folder (and subfolders) there is no file that is not an `.msi`. If some file different than an `.msi` is present, the script must show a message.

The script must be ready before the 10 hours of the next friday. Or the next deployment from our killer-app will fail.
