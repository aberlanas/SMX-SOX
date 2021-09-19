---
title: Unit 01 - Basic Scripting -II
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

Remembering some useful concepts about loops and iterations.

# Task 01 - A Simple Loop

The next code:

```shell
for num in $(seq 1 5); do
    echo " * ${n} "
done
```

Write in the terminal the next output:

```shell
 * 1
 * 2
 * 3
 * 4
 * 5
```

Make the next modifications:

* Using the `man seq` info, modify the code in order to show the numbers in descent order.
* Using the `man seq` info, modify the code in order to show the numbers from 1 to 50 in steps of 3.

# Task 02 - A not so simple loop

The next code :

```shell
OURDNI="12345678X"
for aux in $(seq 1 100); do 
    echo " * The number : ${aux} is in our DNI number? "
    # Fill the gaps
done
```

Must be completed in order to complete the next functions:

* Must check if the number is *inside* our DNI number.
* Must obtain the `OURDNI` as the first argument.
* Must count the number of ocurrences of the 100 first natural numbers *inside* our DNI.

# Task 03 - Poor find command

The next code:

```shell
for f in $(ls -1 $HOME); do
    echo * Working with : ${f}"
done
```

Has a similar behaviour as the `find` command: `find $HOME`. 

Expand the shell script to obtain a *word* as a first argument, and *in the listing* displays a simple 
message in the files inside our $HOME that contains the word given.

Example of execution:

```shell
user@machine:~$./UD01-task03-03.sh Plan
 * Found : Plantillas
```

# Task 04 - Comments? Where?

Please comment the next code, explaining with details the behaviour of the script given. Use the (`# syntax`)

```shell
#!/bin/bash

if [ $# -lt 1 ]; the
    echo " USAGE : $(basename $0) PATH_TO_FIND ARG2"
    exit 1
fi

for f in $(find ${PATH_TO_FIND} -xtype f); do

    rc=0
    cat ${f} | grep -q ${ARG2} || rc=1
    if [ ${rc} -eq 0 ]; then
        echo " * The file ${f} contains ${ARG2}"
    fi

done

```