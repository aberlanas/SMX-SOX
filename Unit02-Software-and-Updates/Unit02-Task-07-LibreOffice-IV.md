---
title: \[Task 06\] - LibreOffice IV A New Hope
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

At our enterprise: *Mr.Yellow Software and Systems*, we need several tools and items in order to make the office work a little bit better.

Today is Friday! The last day of work at week. Tomorrow, everything will be nice, but TODAY our boss needs you!.

Something was wrong with the LibreOffice installation... 

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

`PATHS` and common stuff for scripts could be placed as the first lines of the scripts, in order to stablish at the beginning the 
values and be ready to be changed if the **sysadmin** needs.

# Task 01: Where is our gallery?  (3 points).

First add 2 Star Wars images to the LibreOffice Gallery. 

Code a PowerShell script that accepts 1 argument only. This argument only can have the values:

- windows
- linux

The Script must test if the argument is correct, and then open with the FileExplorer the `PATH` to the Gallery for the *current user*. 

- If the argument is windows -> Look for the PATH in Windows, and then open it!
- If the argument is linux -> Display the correct PATH that could exists in a GNU/LinuX system. Not open it (because is **unavailable**). 
The *current user* detection must be performed and displayed.

Several example:

```PowerShell
/home/windadmin/.config/libreoffice/4/user/gallery
/home/yago/.config/libreoffice/4/user/gallery
/home/Administrador/.config/libreoffice/4/user/gallery
```

The argument check must be case "insensitive".


# Task 02: Arrays and args (2 points).

The next sentence in PowerShell declares an Array with some characters names:

```PowerShell
$rebels=@("Luke","Leia","Han Solo","R2-D2","C3P0","ObiWan","Yoda")
```

Code a PowerShell script that using this Array, accepts as an argument a number between 1 and 7 and display a message to this *rebel* from **Darth Vader**.

```PowerShell
C:\Users\winadmin\Desktop\SOX\:>.\task02.ps1 1
Luke, I am your father.
```

```PowerShell
C:\Users\winadmin\Desktop\SOX\:>.\task02.ps1 3
Han Solo, I am your father.
```

```PowerShell
C:\Users\winadmin\Desktop\SOX\:>.\task02.ps1 7
Yoda, I am your father.
```

The use of the array is **MANDATORY**.

\newpage
# Task 03: Evolution of Shortcuts.(5 points)

Code a PowerShell script that accepts 2 arguments only. The first argument can only have the values:

- `writer`
- `calc`
- `impress`
- `all`

The second argument must be `create` or `delete`.

If the argument is `create` the script must must test if the shortcut to the correct program is created (in previous scripts) and if the Executable of this binary is installed. If the shortcut is already created, or the Executable not exists, the script must displays an error message in Red color. If the shortcut is not created previously, the script must create it to the correct program on the `Desktop` folder for the current user (or for all the programs, with the `all` argument).

If the argument is `delete` the script must must test if the shortcut to the correct program is created (in previous scripts) and then delete it. If not exists, the script must displays an error message in Dark Red color.

## Rubric

- Test the arguments are correct : **2 points**.
- Create the ShortCuts correctly: **2 points**.
- Delete the ShortCuts correctly: **1 point**.

