---
title: Unit 01 - Basic Scripting
subtitle: "Unit 01"
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

In these first days of the year, we will make a briefly remembering about Shell Scripting.

# Task 01 - Simple Conditional

Code a Shell script that obtains the current IP for the machine and chooses what Gateway must be checked.

At school exist several networks, we must obtain the current IP in order to test the correct Gateway. 

In the next table you will see the gateway of each network.

| Network | Gateway |
| ------- | --------|
| 192.168.1.0/24| 192.168.1.254|
| 192.168.2.0/24| 192.168.2.254|
| 192.168.4.0/23| 192.168.4.254|
| 10.2.2.0/24| 10.2.2.254|
| 172.29.0.0/23| 172.29.0.1|

The script must determining the correct Gateway and make a ping of *5* packages.

\newpage
# Task 02 - Conditional and loops.

Using the *for* structure make a script that counts until 301 and returns the sum of the all number between 1 and 301.

# Task 02.1

Change the behaviour of the previous script and returns only the sum of the even numbers between 1 and 301.

# Task 02.2 

Change the behaviour of the previous script and returns only the sum of the even numbers which also are multiples of 13.

\newpage
# Task 03 - Loops over files

The next code:

```shell
for f in $(ls -1 /usr/bin/); do 
    echo "* Working with : $f -> message"
done
```

Makes an operation quite similar to *simple* ls. Now, using the *test* command (`man test`), for each file must be applied the next operations:

- If the file is a `symbolic link` the message must be :**symbolic link**.

