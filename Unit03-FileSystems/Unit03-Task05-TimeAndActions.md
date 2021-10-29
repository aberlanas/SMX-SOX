---
title: \[Dilophosaurio\] - Useful Actions.
subtitle: "Unit 03"
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

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

`PATHS`, `URLS` and common stuff for scripts could be placed as the first lines of the scripts, in order to stablish at the beginning the 
values and be ready to be changed if the **sysadmin** needs.

The LIMIT for the presentation is 9:20.

The examples for this task are presented in a Windows OS, but you can imagine the correct paths for GNU/LinuX.

# Task 01

Choose one language: BASH or PowerShell, and then code a Script that:

- Accepts 3 argument.
- The first one must be a **valid user** of the System. In other case, the script must exit and display a message:

```PowerShell
 * Error - The User given not exists.
```

- The second argument must be one of these words:
    - `replenish`
    - `test`
    - `clean`

The behaviours of the actions are described below:

\newpage
## replenish

In the `HOME` directory of the Given user, the script must create the next folder structure:

```PowerShell
 -- RussianSeas\
           White\
           Baltic\
           Black\
           Caspian\
           Aral\
           Baikal\
```

In each of the folders of the seas the script must create a single text file with the name of the user as the content of the file with the date of the creation. The file must be named as: `control-sea.txt`.


```PowerShell
 -- RussianSeas\
           White\
             control-sea.txt
           Baltic\
             control-sea.txt
           Black\
             control-sea.txt
           Caspian\
             control-sea.txt
           Aral\
             control-sea.txt
           Baikal\
```

In the Baikal folder (because is a Lake), you must NOT include this file and instead of it, you must include a file named as :

```
Environment + "the user given " + "the date in format YYYYmmdd-hhMM " + ".txt"
```

Wich content will be the list of the current Environment Values for this user. 

```PowerShell
.\exam.ps1 Administrador replenish "All is done"
# Doing stuff
# Creating file at:
C:\Users\Administrador\RussianSeas\Baikal\Environment-Administrador-20211029-0630.txt
.....
.....
All is done
```


In the `replenish` action, the third argument must be Written as a message when everything was complet, as a "All is done" message.


## test

If the second argument is test, then the script must accepts a third argument that must be a valid PATH to a RussianSeas folder. The script must test if the folder is in a *correct place* and test if the user given has Read Permissions of all the files and folders under the PATH given.

Examples of usage:


```PowerShell
C:\Users\Administrador\Scripts>.\usefulActions.ps1 Administrador test C:\non-russian-directory
 * Test 1 : The user Administrador exists.
 * Test 2 : The action test is a valid action.
 * Error! - The folder given to test not exists: C:\non-russian-directory
```

Now, if the previous behaviour (with replenish) was run for the user *Administrador*, the output must be:


```PowerShell
C:\Users\Administrador\Scripts>.\usefulActions.ps1 Administrador test C:\Users\Administrador\RussianSeas
 * Test 1 : The user Administrador exists.
 * Test 2 : The action test is a valid action.
 * Test 3 : The folder given to test exists: C:\Users\Administrador\RussianSeas
 -- The folder : RussianSeas exists and could be read by Administrador.
 -- The folder : RussianSeas/Aral exists and could be read by Administrador.
 -- The folder : RussianSeas/Black exists and could be read by Administrador.
 ...

```

## clean

If the second argument is clean, then the script must accepts a third argument that must be a valid PATH to a RussianSeas folder. The script must test if the folder is in a *correct place* and remove it and its files and sub-folders.

