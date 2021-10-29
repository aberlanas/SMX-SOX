---
title: \[Dilophosaurio\] - Useful Actions for Users.
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

For a Sysadmin, the Know-How about the diferent user's environments and be able to switch between different users is very important skill to develop.

Test if a folder is created, or if a user has permissions to read it could be useful.


# Task 01 (5 points)

In PowerShell, using Windows 10 or Windows Server code a PowerShell Script that:

- Accepts 2 argument.
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
 -- Workspace\
           config\
           bin\
           source\
           rsrc\
```

In each of these folders the script must create a single text file with the name of the user as the content of the file. The file must be named as: `sample.txt`.

```PowerShell
 -- Workspace\
           config\
            sample.txt
           bin\
            sample.txt
           source\
            sample.txt
           rsrc\
            sample.txt
           sample.txt

```

\newpage

## test

If the second argument is test, then the script must accepts a third argument that must be a valid PATH to a Workspace folder. The script must test if the folder is in a *correct place* and test if the user given has Read Permissions of all the files and folders under the PATH given.

Examples of usage:


```PowerShell
C:\Users\Administrador\Scripts>.\usefulActions.ps1 Administrador test C:\non-existing-directory
 * Test 1 : The user Administrador exists.
 * Test 2 : The action test is a valid action.
 * Error! - The folder given to test not exists: C:\non-existing-directory
```

Now, if the previous behaviour (with replenish) was run for the user *Administrador*, the output must be:


```PowerShell
C:\Users\Administrador\Scripts>.\usefulActions.ps1 Administrador test C:\Users\Administrador\Workspace
 * Test 1 : The user Administrador exists.
 * Test 2 : The action test is a valid action.
 * Test 3 : The folder given to test exists: C:\Users\Administrador\Workspace
 -- The folder : Workspace exists and could be read by Administrador.
 -- The folder : Workspace/bin exists and could be read by Administrador.
 -- The folder : Workspace/config exists and could be read by Administrador.
 -- The folder : Workspace/rsrc exists and could be read by Administrador.
 -- The folder : Workspace/src exists and could be read by Administrador.
 -- The file : Workspace/sample.txt exists and could be read by Administrador.
 -- The file : Workspace/bin/sample.txt exists and could be read by Administrador.
 -- The file : Workspace/config/sample.txt exists and could be read by Administrador.
 -- The file : Workspace/rsrc/sample.txt exists and could be read by Administrador.
 -- The file : Workspace/source/sample.txt exists and could be read by Administrador.
```

## clean

If the second argument is clean, then the script must accepts a third argument that must be a valid PATH to a Workspace folder. The script must test if the folder is in a *correct place* and remove it and its files and sub-folders.

# Task 02 (5 points)

Make the same script in Shell for the Xubuntu environment or Ubuntu Server. Adapt the values to the correct places in a GNU/LinuX OS.





