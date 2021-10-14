---
title: \[HowTo\] - The IF mechanism
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

When you need to test if some word is in a file, some characters appears in a variable, etc. You can use whatever you want, but I suggest the use of the `grep -q` mechanism.

Several examples:

Test if the file `/etc/issue` exists.

```shell
if [ -e /etc/issue ]; then
    echo " * The file exists" 
fi
```

But if you want if the file **contains** the word *ubuntu* in case insensitive....you can code the script in a different way:

```shell
# First init a variable with a initial value
rc=0

# Now make the test with a grep -q and one LOGIC OR 
# (or the first part of the sentence goes well 
# or the second one will be executed)
cat /etc/issue | grep -q -i ubuntu || rc=1

# If the word ubuntu is present in the content of the files 
# the second part of the LOGIC OR won't be performed.
# We have the next situation:
# - if the $rc variable == 0, is because the first part went well.
# - if the $rc variable == 1, is because the first part didn't go well.

# Now code the if with this situation in our minds

if [ $rc -eq 0 ]; then 
    echo " * Yes, we are a Ubuntu System."
else
    echo " * No, we aren't a Ubuntu System."
fi

```

Other example, test if in the first argument we have the word `debian`.

```shell
VAR=$1
rc=0
echo $VAR | grep -q -i "debian" || rc=1
if [ $rc -eq 0 ]; then
    echo " * debian is passed as the first argument"
fi
```