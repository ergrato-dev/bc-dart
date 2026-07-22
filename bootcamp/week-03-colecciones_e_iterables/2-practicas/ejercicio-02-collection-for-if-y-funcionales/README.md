# Ejercicio 02 — Collection-for/if y Operadores Funcionales

> Practicarás collection-if, collection-for, spread y los operadores funcionales `where`, `map`
> y `fold` descomentando código paso a paso.

## 🎯 Objetivos

- Construir listas con collection-if, collection-for y spread (`...`, `...?`)
- Filtrar con `where` y transformar con `map`
- Reducir una colección a un único valor con `fold`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-listas-sets-y-maps/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Collection-if y collection-for

```dart
List<String> buildTitles(bool includeDrafts) {
  return [
    'Clean Code',
    '1984',
    if (includeDrafts) 'Borrador',
    for (var i = 1; i <= 2; i++) 'Reservado #$i',
  ];
}

print(buildTitles(false));
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

> 💡 El `includeDrafts` viaja como **parámetro** (no como constante local) a propósito: si el
> analyzer puede probar que una condición siempre es `false` dentro de la misma función, marca
> el `if` como código muerto (`dead_code`). Pasarlo como argumento evita esa advertencia y es
> además más reutilizable.

✅ **Verifica**: debe imprimir `[Clean Code, 1984, Reservado #1, Reservado #2]` (sin el
borrador).

---

## Paso 2: Spread (`...`) y spread nulo (`...?`)

```dart
final classics = ['1984', 'Fahrenheit 451'];
List<String>? extraTitles;

final catalog = [...classics, ...?extraTitles, 'Dune'];
print(catalog);
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `[1984, Fahrenheit 451, Dune]` — `extraTitles` es `null`, así
que `...?` no agrega nada.

---

## Paso 3: `where` y `map` encadenados

```dart
final copies = <String, int>{'Clean Code': 3, '1984': 0, 'Dune': 5};

final availableUpper = copies.entries
    .where((entry) => entry.value > 0)
    .map((entry) => entry.key.toUpperCase())
    .toList();

print(availableUpper);
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `[CLEAN CODE, DUNE]` — `1984` queda fuera porque tiene 0 copias.

---

## Paso 4: `fold` — reducir a un único valor

```dart
final copies = [3, 0, 1, 5];

final total = copies.fold<int>(0, (accumulator, current) => accumulator + current);
print('Total de copias: $total');
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `Total de copias: 9`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 5 líneas (encabezado + 4 datos)
sin ningún error de `dart analyze`.
