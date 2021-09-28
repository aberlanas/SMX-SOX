# Seguimos con el trabajo de leer ficheros y procesar la informacion.
# En el fichero csv que se os adjunta (mock-data.csv) existen una serie de columnas
# y una serie de filas. 

# Debeis comprender como funciona, tanto Import-Csv como 
# ForEach-Object

# Os recomiendo hacer pruebas de como funciona, ejecutadlo, 
# probad parametros, etc.

# Una vez lo tengais claro, modificad el script para que si la IP del usuario comienza
# por el mismo numero que vuestra IP muestre su nombre y su mascota.

$DIRECCION=(Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex 1).IpAddress
$BUSCAR=$DIRECCION.Split(".")[0]

Import-Csv -Path .\Desktop\mock-data.csv | ForEach-Object {
    if ($($_.ip).StartsWith($BUSCAR)){
        Write-Host "El Usuario $($_.username), tiene de mascota un $($_.pet)"
    }
}