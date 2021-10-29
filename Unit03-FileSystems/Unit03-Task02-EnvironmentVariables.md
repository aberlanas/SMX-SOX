---
title: \[Dilophosaurio\] - Environment Skills.
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

For a Sysadmin, the Know-How about the diferent user's environments is very important skill to develop.

Describes how to access Windows environment variables in PowerShell.

# Article 1 

Environment variables store information about the operating system environment. This information includes details such as the operating system path, the number of processors used by the operating system, and the location of temporary folders.

The environment variables store data that is used by the operating system and other programs. For example, the WINDIR environment variable contains the location of the Windows installation directory. Programs can query the value of this variable to determine where Windows operating system files are located.

PowerShell can access and manage environment variables in any of the supported operating system platforms. The PowerShell environment provider simplifies this process by making it easy to view and change environment variables.

Environment variables, unlike other types of variables in PowerShell, are inherited by child processes, such as local background jobs and the sessions in which module members run. This makes environment variables well suited to storing values that are needed in both parent and child processes.

## Using and changing environment variables

On Windows, environment variables can be defined in three scopes:

* Machine (or System) scope
* User scope
* Process scope

The Process scope contains the environment variables available in the current process, or PowerShell session. This list of variables is inherited from the parent process and is constructed from the variables in the Machine and User scopes. Unix-based platforms only have the Process scope.

You can display and change the values of environment variables without using a cmdlet by using a variable syntax with the environment provider. To display the value of an environment variable, use the following syntax:

```PowerShell
$Env:<variable-name>
```

For example, to display the value of the WINDIR environment variable, type the following command at the PowerShell command prompt:

```PowerShell
$Env:windir
```

In this syntax, the dollar sign ($) indicates a variable, and the drive name (Env:) indicates an environment variable followed by the variable name (windir).

When you change environment variables in PowerShell, the change affects only the current session. This behavior resembles the behavior of the Set command in the Windows Command Shell and the Setenv command in UNIX-based environments. To change values in the Machine or User scopes, you must use the methods of the System.Environment class.

To make changes to Machine-scoped variables, you must also have permission. If you try to change a value without sufficient permission, the command fails and PowerShell displays an error.

You can change the values of variables without using a cmdlet using the following syntax:


```PowerShell
$Env:<variable-name> = "<new-value>"
```

For example, to append `c:\\temp` to the value of the Path environment variable, use the following syntax:


```PowerShell
$Env:Path += ";c:\temp"
```


On Linux or macOS, the colon (:) in the command separates the new path from the path that precedes it in the list.

```PowerShell
$Env:PATH += ":/usr/local/temp"
```

You can also use the Item cmdlets, such as Set-Item, Remove-Item, and Copy-Item to change the values of environment variables. For example, to use the Set-Item cmdlet to append ```c:\temp``` to the value of the Path environment variable, use the following syntax:


```PowerShell
Set-Item -Path Env:Path -Value ($Env:Path + ";C:\Temp")
```

In this command, the value is enclosed in parentheses so that it is interpreted as a unit.
Managing environment variables

PowerShell provides several different methods for managing environment variables.

* The Environment provider drive
* The Item cmdlets
* The .NET System.Environment class
* On Windows, the System Control Panel

## Using the Environment provider

Each environment variable is represented by an instance of the System.Collections.DictionaryEntry class. In each DictionaryEntry object, the name of the environment variable is the dictionary key. The value of the variable is the dictionary value.

To display the properties and methods of the object that represents an environment variable in PowerShell, use the Get-Member cmdlet. For example, to display the methods and properties of all the objects in the Env: drive, type:


```PowerShell
Get-Item -Path Env:* | Get-Member
```

The PowerShell Environment provider lets you access environment variables in a PowerShell drive (the Env: drive). This drive looks much like a file system drive. To go to the Env: drive, type:

```PowerShell

Set-Location Env:
```

Use the Content cmdlets to get or set the values of an environment variable.


```PowerShell

PS Env:\> Set-Content -Path Test -Value 'Test value'
PS Env:\> Get-Content -Path Test
Test value
```

You can view the environment variables in the Env: drive from any other PowerShell drive, and you can go into the Env: drive to view and change the environment variables.

## Using Item cmdlets

When you refer to an environment variable, type the Env: drive name followed by the name of the variable. For example, to display the value of the COMPUTERNAME environment variable, type:

```PowerShell
Get-ChildItem Env:Computername
```

To display the values of all the environment variables, type:


```PowerShell
Get-ChildItem Env:
```

Because environment variables do not have child items, the output of Get-Item and Get-ChildItem is the same.

By default, PowerShell displays the environment variables in the order in which it retrieves them. To sort the list of environment variables by variable name, pipe the output of a Get-ChildItem command to the Sort-Object cmdlet. For example, from any PowerShell drive, type:

```PowerShell
Get-ChildItem Env: | Sort Name
```

You can also go into the Env: drive by using the Set-Location cmdlet:

```PowerShell
Set-Location Env:
```

When you are in the Env: drive, you can omit the Env: drive name from the path. For example, to display all the environment variables, type:

```Powershell
PS Env:\> Get-ChildItem
```

To display the value of the COMPUTERNAME variable from within the Env: drive, type:


```Powershell
PS Env:\> Get-ChildItem ComputerName
```

## Saving changes to environment variables

To make a persistent change to an environment variable on Windows, use the System Control Panel. Select Advanced System Settings. On the Advanced tab, click Environment Variable.... You can add or edit existing environment variables in the User and System (Machine) scopes. Windows writes these values to the Registry so that they persist across sessions and system restarts.

Alternately, you can add or change environment variables in your PowerShell profile. This method works for any version of PowerShell on any supported platform.

## Using System.Environment methods

The System.Environment class provides GetEnvironmentVariable and SetEnvironmentVariable methods that allow you to specify the scope of the variable.

The following example uses the GetEnvironmentVariable method to get the machine setting of PSModulePath and the SetEnvironmentVariable method to add the ```C:\Program Files\Fabrikam\Modules``` path to the value.

```Powershell
$path = [Environment]::GetEnvironmentVariable('PSModulePath', 'Machine')
$newpath = $path + ';C:\Program Files\Fabrikam\Modules'
[Environment]::SetEnvironmentVariable("PSModulePath", $newpath, 'Machine')
```

# Task 01

Using the info that is explained before, list the environment variables for the Admin user in your Windows 10 Installation. 

Now choose 5 variables (those that you want, but that you think may be useful). 
Make a PowerShell script that using arguments from 1 to 5 that list a custom information about the variable:

- The Name of the variable.
- The way to access the value.
- A briefly description of the stored value (In your own words).
- Some examples of use.

## Example of Use

If the envirnoment variables chosen are:

1. Windir
2. Current User
3. AppData
4. Home
5. Windows Version

```PowerShell
PS C:\Users\aberlanas\Desktop\Unit03\PSscripts > .\script01.ps1 1
 * The Chosen variable is windir
 * You can use to acces: $Env:windir
 * Store the current Windows Installation Folder.
 * - To find Drivers: $Env:windir\System32\Drivers
```


# Task 02

Now list the environment variables for the Admin user in your Windows Server Installation. 

Now choose 5 variables (those that you want, but that you think may be useful), that aren't present in the 
Windows 10 list (the full list). 
Make a PowerShell script that using arguments from 1 to 5 that list a custom information about the variable:

- The Name of the variable.
- The way to access the value.
- A briefly description of the stored value (In your own words).
- Some examples of use.
