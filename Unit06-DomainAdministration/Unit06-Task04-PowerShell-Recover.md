---
title: \[OpenLDAP\] - OpenLDAP + Windows + PowerShell
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

# Tasks: Remembering PowerShell

![](./imgs/goblin-sneaky.png)

## Task 01 : Randomizer

Code a PowerShell script that using arguments, generate several random numbers (simulating a *dice tower*) and show the results to the user.

The behaviour is the next:

- The first argument set the number of dice faces that has the dice.
- The second argument set the number of dices of this number of faces given.
- The third argument set the minimun  result in the dice throwing that results in a success. 

For each dice, if the number is greater or equal to the number given as success, the output must concatenate a "\*".

At the end of the dice output, show the number of success given.

The output must show all the results.

Example:

```PowerShell

C:\Users\winadmin\Escritorio\randomizer.ps1 6 3 4
- Dice 1: 3
- Dice 2: 2
- Dice 3: 5 *
-------
Success: 1

```

The script must check that the arguments are numbers and are only 2 arguments.




