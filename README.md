# General Scripts
A handful of scripts that make my life easier.

Some of them are written in PowerShell, and others are in Python.

## [Instalattion Script](script-intalacao.ps1)
After every new installation on a new computer, we need to install a specific set of apps which are located on a designated network path, which is already mapped before execution.

_Uses PowerShell._

## [Get New Version](atualiza-arquivo.ps1)
Since the main application is updated only on the server, I've created a script that runs as a task to check if the local version is the latest. If it's not, the script fetches the new version.

_Uses PowerShell._

## [Segment CSV](divide-csv.py)
Sometimes we need to send a .csv file. Previously, there was no limit to the line sizes in these files, but now there is. To address this, I've created a script to divide any .csv file into smaller parts.

_Uses Python._

## [Change String](altera-string-html/script.py)
Every year, we have to update the email signatures. This script replaces placeholders for each worker on a list and generates a new file with the updated signatures.

The next step is to automate the sending of the new file to the correct mailbox.

_Uses Python._
