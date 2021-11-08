---
title: \[Gallinimus\] - A Dawn At The Opera.
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
titlepage-background: "../rsrc/backgrounds/background-title-senia-gallinimus.pdf"
---


# A Dawn At The Opera

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

I would like to emphasize that the completion of this task will be demanding with the following aspects:

- That you are able to read a *long* sentence and know how to extract *what is needed to be done*.
- That you handle the routes (absolute and relative) with accuracy and taking seriously what you are doing. If you create the wrong routes, it will not work (a **0** in that section).
- Each work will be evaluated in an *isolated* way.
- If someone *makes witchcraft* or *plagiarice* I'll know.

In this task we will made several scripts in order to clean the environment that could be used by the scripts from the
A Night At The Opera.

# Task 01

Make a shell script that accepts 1 argument that could be:

- Everything ( `--all`)
- Act01 ( `--01`)
- Act02 ( `--02`)
- Act03 ( `--03`)
- Act04 ( `--04`)

The script must delete all files and folders under the correct Act given or everything (if the argument is `--all`).
The script must test if the argument is one of the above, displaying some kind of warning message if not.

\newpage
# Task 02

Make a shell script that accepts 1 argument that could be:

- instruments ( `--instruments|-i`)
- groups ( `--groups|-g`)

As you can see, the options must accept two ways in order to be set:

1. The *long* (`--instruments`)
2. The *short*(`-i`)

This is a common place in CLI environments, in order to be narrative. Both ways have the same behaviour.

The script must test if the argument is one of the above, displaying some kind of warning message if not.

If the argument is **instruments**, the script must:

Foreach user from the orchestra:

- Test if the user exists, if not exists, displays some custom message and continue with the next user.
- Delete `$HOME` folder.
- Remove it from shadow  and passwd.
- Displays messages from each operation.

If the argument is **groups**, the script must:

Foreach group from the orchestra:

- Test if the group exists, if not exists, displays some custom message and continue with the next group.
- Extract all users that belongs to that group from the group.
- Remove the group.
- Displays messages from each operation.

\newpage
# Task 03

Correct the scripts from A Night At The Opera with the explanation from the last day.


