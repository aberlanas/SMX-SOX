---
title: \[Python\] Roswitha von Gandersheim y los Números Abundantes
subtitle: "Una TRAGEDIA en tres actos para 4º de la ESO"
author: Patxi y Angel
header-includes: |
lang: es-ES
keywords: [Python, Maths]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia-eso-python.pdf"
---

# Roswitha von Gandersheim y los Números Abundantes

Durante el Siglo X, durante lo que para much@s fue una época oscura y siniestra, algunas mujeres defendieron las matemáticas y la luz que aportaban a la ciencia.

El mundo de hoy no sería el que es sin ellas. Heroínas ocultas por el desconocimiento, cuyos logros no dejan de sorprendernos a medida que vamos conociéndolos. 

Uno de los logros más curiosos de estas heroínas pertenece a una Abadesa Germana llamada: *Roswitha von Gandersheim*, que escribió una obra de teatro en la que las tres hijas de la **Sabiduría** le explicaban conceptos matemáticos al torpe e inculto príncipe protagonista. 

![Roswitha](imgs/Gandersheim.jpg)\

\newpage
## Acto I : Los Divisores

Durante la Edad Media se consideraba que un numero era divisor de otro si al realizar la división *entera* entre ese número , su resto era *0*.

$$x\ es\ divisor\ de\ y\ si \rightarrow y \% x = 0$$

Entre los divisores de un número se debía contar el 1, pero no él propio número, así:

$$Divisores\ de\ 8 \rightarrow { 1,2,4 }$$

### Tarea 1

Ayuda a *Roswhita* escribiendo un programa en Python que dado un número que le pida al príncipe protagonista, le devuelva una lista con los divisores del número dado.

```shell
cuarto@maquina:~$./acto1.py
 * Oh inutil principe, dime de que numero deseas saber sus divisores: 15
 * Los divisores son: 
   [1,3,5]
 * Pase un buen dia principe.
```

\newpage
## Acto II: Los Números Abundantes,Deficientes y Justos.

En los *Elementos de Euclides* aparecen referencias a diferentes tipos de números, entre ellos los números *Abundantes,Deficientes y Justos*. ¿Qué son estos números?, Las hijas de la Sabiduría nos lo explican:


*Se dice que un número es abundante si la suma de todos sus divisores es más grande que el número dado, deficiente si la suma es menor y justo si coincide exactamente con el número.*

*EJEMPLO del Cálculo de Números Abundantes*

$$los\ Divisores\ de\ 12\ son \rightarrow {1,2,3,4,6}$$
$$1+2+3+4+6=16$$

$$16\ es\ >\ 12\rightarrow\ es\ Abundante$$

Algunos números *abundantes* son:

$$12,42,100$$



Otros números *deficientes* son:

$$Todos\ los\ números\ primos$$

Y algunos números *justos* (también denominados **perfectos**) son:

$$28,496,8128$$


\newpage
### Tarea 2

Ayuda ahora a *Roswhita*, programando script en Python que dado un número, le indique si es *abundante, deficiente o justo*.


```shell
cuarto@maquina:~$./acto2.py
 * Oh inutil principe, dime de que numero deseas saber su naturaleza: 15
 -- Es deficiente : La suma de sus divisores da 9.
 * Pase un buen dia principe.

cuarto@maquina:~$./acto2.py
 * Oh inutil principe, dime de que numero deseas saber su naturaleza: 12
 -- Es Abundante : La suma de sus divisores da 16
 * Pase un buen dia principe.

cuarto@maquina:~$./acto2.py
 * Oh inutil principe, dime de que numero deseas saber su naturaleza: 28
 -- Es JUSTO : La suma de sus divisores da 28
 * Pase un buen dia principe.
```

\newpage
## Acto III: Mejorando el Acto II

Mejora el programa del Acto II con las siguientes mejoras posibles:

 - Qué el número indicado sea un entero positivo entre 2 y 1000000, mostrando un mensaje de error en otro caso.
 - Qué en vez de mostrar tan sólo el resultado de la suma, muestre la operación realizada también para que el ojo humano
   pueda comprobar qué se están realizando los cálculos correctamente:

*EJEMPLO*
```shell
cuarto@maquina:~$./acto3.py
 * Oh inutil principe, dime de que numero deseas saber su naturaleza: 12

 La operacion es la siguiente:
 1 + 2 + 3 + 4 + 6 = 16

 -- Es Abundante : La suma de sus divisores da 16
 * Pase un buen dia principe.
```



