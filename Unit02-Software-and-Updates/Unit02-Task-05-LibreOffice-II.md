---
title: \[Task 05\] - LibreOffice II
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

Today we are working in the creation of several **shortcuts** which will improve the office work. But first of all, we need discovering all the programs that could be launched in a typical installation of LibreOffice.

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

The folder `C:\Program Files\LibreOffice` could be in another PATH, because it depends on the System Architecture and the Windows Version. Could be a good idea store the *PATH* inside a variable.

# Task 01

Code a PowerShell script for listing all the files under `C:\Program Files\LibreOffice` directory that have the `.exe` extension.

# Task 02

Code a PowerShell script that accepts two arguments:

- count
- search `word`

## count

If the argument passed to the script is : `count` the script must return the total amount of `.dll` files that are at `C:\Program Files\LibreOffice`.

In GNU/LinuX systems the command could be something like this:

```shell
find . -name "*.dll" | wc -l
```
## search word

If the argument is search, then we need another argument (the word for search). Then the script musts return all the files under `C:\Program Files\LibreOffice` which name *matches* the word given (in UPPERCASE, lowercase, or whatever).

# Task 03

Code a PowerShell that:

1. Test if the Shortcuts exists on the USER `Desktop` folder.
2. If the Shortcuts exists, remove it before create it.
3. Create a Shortcut to :

    - LibreOffice Writer.
    - LibreOffice Draw.
    - LibreOffice Calc.

On the USER `Desktop` folder.

# Task 04

In the LibreOffice installation you can find several files with the extension: `.mo` . 

Read on the Internet about these files and answer the next questions:

- What is the purpose of these kind of files?.
- What is the language for the codes:
  - .si
  - .va
  - .ko
  - .jp
  - .cn
  


