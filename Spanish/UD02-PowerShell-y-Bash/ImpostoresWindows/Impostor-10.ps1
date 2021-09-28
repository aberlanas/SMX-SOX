# Este Script ya va teniendo mas complicacion.

# En el fichero csv que se os adjunta (mock-data.csv) existen una serie de columnas
# y una serie de filas. 

# Debeis comprender como funciona, tanto Import-Csv como 
# ForEach-Object

# Os recomiendo hacer pruebas de como funciona, ejecutadlo, 
# probad parametros, etc.

# Una vez lo tengais claro, modificad el Script para muestre el nombre de la mascota de cada
# uno de los usuarios. (Para entender esto, vale la pena que le echeis un vistazo a todo 
# en su conjunto.

Import-Csv -Path .\Desktop\mock-data.csv | ForEach-Object {
    Write-Host "El Usuario $($_.username), tiene de mascota un $($_.ip)"
}