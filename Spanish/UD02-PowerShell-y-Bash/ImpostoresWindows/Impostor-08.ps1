#
# Este Script debe de crear una carpeta al mismo nive de ImpostoresWorkspace (ver script anterior) que se llame
# IMPOSTORESIMPOSTORES, si ya existe, no hacer nada.

# Y crear en esa carpeta un ACCESO DIRECTO (Symbolic Link) al fichero Sendero.data cuyo nombre (del enlace sea Camino.lnk).

$RUTA_ESCRITORIO=$env:USERPROFILE+"\Desktop\ImpostoresWorkspace\"

New-Item -ItemType File C:\Users\angel\Desktop\ImpostoresWorkspace\Sendero.data C:\Users\angel\Desktop\IMPOSTORESIMPOSTORES\Camino.lnk

