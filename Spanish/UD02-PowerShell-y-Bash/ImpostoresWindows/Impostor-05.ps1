#
# Este Script debe crear una serie de ficheros en el Escritorio del usuario que lo ejecuta y luego
# dentro de la misma crear una serie de ficheros de ejemplo. 
# Una vez creados ejecutara una comprobacion de aquellos ficheros que tienen una determinada 
# extension (.txt).

# Este SCRIPT es requisito para los siguientes.
# 

$RUTA_ESCRITORIO=$env:USERPROFILE+"\Desktop\ImpostoresWorkspace\"

if ( Test-Path $RUTA_ESCRITORIO){
    Write-Host " El usuario ha ejecutado esto antes..."
    Remove-Item -Path $RUTA_ESCRITORIO -Force -Recurse
}else{
    Write-Host " El usuario NO lo ha ejecutado"
}

New-Item -ItemType Directory $RUTA_ESCRITORIO
New-Item -ItemType File $RUTA_ESCRITORIO"Cancion-01.mp3"
New-Item -ItemType File $RUTA_ESCRITORIO"Cancion-02.mp3"
New-Item -ItemType File $RUTA_ESCRITORIO"Fichero.txt"
New-Item -ItemType File $RUTA_ESCRITORIO"Documento.odt"
New-Item -ItemType File $RUTA_ESCRITORIO"Carta.pdf"
New-Item -ItemType File $RUTA_ESCRITORIO"Video.mp4"
New-Item -ItemType File $RUTA_ESCRITORIO"Sendero.data"

Write-Host " Muestra solo los ficheros .txt"
Get-ChildItem $RUTA_ESCRITORIO 
