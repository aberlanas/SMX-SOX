#
# Este Script debe crear en la carpeta personal 
# del usuario que lo ejecuta una carpeta cuyo nombre sea el
# login del propio usuario concatenado a "-backup".
# Ejemplo: 

# usuario : aberlanas
# carpeta : aberlanas-backup
# 

$BACKUP="ESTAMAL"

New-Item -Path $env:USERPROFILE -Name $BACKUP