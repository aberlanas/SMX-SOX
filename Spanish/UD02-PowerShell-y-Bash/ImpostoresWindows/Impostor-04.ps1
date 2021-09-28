#
# Este Script debe comprobar que el usuario ha ejecutado 
# alguna vez el Firefox (cuando este programa se crea, genera
# una carpeta en la carpeta del usuario con un nombre concreto).
# En caso de que exista debe mostrar un mensaje indicándolo.
# 

if ( Test-Path $RUTA_A_LA_CARPETA){
    Write-Host " El usuario ha ejecutado el Firefox"
}else{
    Write-Host " El usuario NO lo ha ejecutado"
}

