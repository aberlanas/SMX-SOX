#
# Este Script debe crear en la carpeta personal 
# del usuario que lo ejecuta una carpeta y dentro un fichero
# cuyo contenido ha de ser la hora de la ejecucion de este 
# script, y el nombre "token.tkn"
# 

$RUTA=$env:USERPROFILE+"\token.tkn"

Write-Host $RUTA

New-Item -ItemType File $RUTA -Force
Get-Date | Out-File 

Get-Content $RUTA

