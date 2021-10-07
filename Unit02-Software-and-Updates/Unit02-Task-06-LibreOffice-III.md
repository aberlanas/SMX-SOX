---
title: \[Task 06\] - LibreOffice III
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

The work with arguments is a **must** for the IT Professionals. We are going to practice it (a little bit harder).

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

`PATHS` and common stuff for scripts could be placed as the first lines of the scripts, in order to stablish at the beginning the 
values and be ready to be changed if the **sysadmin** needs.

# Task 01

Code a PowerShell script that accepts 1 argument only. This argument can only have the values:

- `writer`
- `calc`
- `impress`
- `all`

1. If the argument is `writer` the script must test if the shortcut to Writer is created (in previous scripts) and if the Executable of `writer` is installed.
2. If the argument is `calc` the script must test if the shortcut to Writer is created (in previous scripts) and if the Executable of `calc` is installed.
3. If the argument is `impress` the script must test if the shortcut to Writer is created (in previous scripts) and if the Executable of `impress` is installed.
4. If the argument is `all` the script must test the three previous shortcuts and executables.

For all the tests:

- If the *shortcut* is not created, the script must display a message in Cyan.
- If the **executable** is not created, the script must display a message in Red.

