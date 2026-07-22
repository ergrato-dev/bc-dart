# Glosario — Semana 03: Colecciones e Iterables

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

## C

**Collection-for**: sintaxis que genera elementos de una colección a partir de un bucle `for`
escrito directamente dentro del literal (`[for (final x in xs) ...]`).

**Collection-if**: sintaxis que incluye condicionalmente un elemento dentro de un literal de
colección (`[if (condicion) valor]`).

## E

**`entries`**: propiedad de un `Map` que retorna un `Iterable` de pares clave-valor
(`MapEntry`), útil para recorrer ambos datos en una sola vuelta.

## F

**`fold`**: método que reduce un `Iterable` a un único valor, partiendo de un valor inicial
explícito — funciona incluso sobre colecciones vacías.

## I

**`Iterable`**: tipo base de las colecciones recorribles en Dart (`List` y `Set` lo implementan).
Muchos de sus métodos (`map`, `where`) son **perezosos** (lazy).

## L

**`List`**: colección ordenada que permite valores duplicados, con acceso por índice numérico.

## M

**`map` (método)**: transforma cada elemento de un `Iterable` aplicando una función, uno a uno.

**`Map` (tipo)**: colección de pares clave-valor (`Map<K, V>`), con acceso por clave en vez de
por posición.

## P

**Perezoso (lazy)**: propiedad de ciertos métodos de `Iterable` (`map`, `where`) donde la
operación no se ejecuta hasta que algo consume el resultado (ej. `.toList()`, un `for-in`).

## R

**`reduce`**: método que reduce un `Iterable` a un único valor usando su primer elemento como
punto de partida — lanza excepción si la colección está vacía.

## S

**`Set`**: colección que garantiza que cada elemento aparece una sola vez, sin orden
garantizado.

**Spread (`...`)**: operador que expande todos los elementos de una colección existente dentro
de un nuevo literal.

**Spread nulo (`...?`)**: variante del spread que no agrega elementos (en vez de lanzar
excepción) cuando la colección de origen es `null`.

## W

**`where`**: método que filtra los elementos de un `Iterable` según una función que retorna
`bool` (un predicado).

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
