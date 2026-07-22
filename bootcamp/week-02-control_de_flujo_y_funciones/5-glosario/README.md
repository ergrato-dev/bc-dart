# Glosario — Semana 02: Control de Flujo y Funciones

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

## A

**Arrow function**: sintaxis `=>` para una función cuyo cuerpo es una única expresión —
equivale a `{ return expresión; }`.

## B

**`break`**: sentencia que termina un bucle o un `case` de `switch` statement por completo.

## C

**`case`**: cada rama de un `switch`, tanto en su forma statement como expression.

**Closure**: función que captura una o más variables de su entorno léxico (scope donde fue
creada) y las conserva vivas después de que ese entorno termine de ejecutarse.

**`continue`**: sentencia que salta el resto del cuerpo de la iteración actual y pasa a la
siguiente vuelta del bucle.

## E

**Exhaustividad**: propiedad de un `switch` expression donde el analyzer verifica, en tiempo de
compilación, que todos los valores posibles del tipo evaluado están cubiertos (o que existe un
comodín `_`).

## F

**Fallthrough**: en un `switch` statement, que un `case` "caiga" al cuerpo del siguiente sin
ejecutar un `break` — en Dart solo es válido si el `case` que cae tiene cuerpo vacío.

**Función anónima**: función sin nombre propio, normalmente pasada directamente como argumento
o asignada a una variable.

**Función de orden superior**: función que recibe otra función como parámetro y/o retorna una
función.

**Función-fábrica**: función que retorna otra función (típicamente un closure) configurada con
los parámetros que recibió.

## O

**Operador ternario (`? :`)**: expresión condicional corta, equivalente a un `if`/`else` que
retorna un valor: `condicion ? valorSiTrue : valorSiFalse`.

## P

**Parámetro nombrado (`{}`)**: parámetro que se pasa como `nombre: valor`, en cualquier orden.
Requiere `required` si no tiene valor por defecto.

**Parámetro posicional opcional (`[]`)**: parámetro que se pasa por posición pero puede omitirse
— su valor es `null` (o el valor por defecto declarado) si no se pasa.

## S

**`switch` expression**: forma de `switch` de Dart 3 que produce (retorna) un valor, con
exhaustividad verificada en compilación.

**`switch` statement**: forma clásica de `switch`, orientada a ejecutar efectos secundarios por
rama, sin retornar un valor.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
