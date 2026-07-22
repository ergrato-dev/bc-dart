# Ejercicio 01 — Listas, Sets y Maps

> Practicarás `List`, `Set` y `Map` — creación, acceso, mutación y recorrido — descomentando
> código paso a paso.

## 🎯 Objetivos

- Crear y mutar una `List` (`add`, `removeAt`, acceso por índice)
- Usar un `Set` para garantizar valores únicos
- Crear un `Map`, acceder por clave y recorrer sus `entries`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: `List` — crear, mutar, acceder

```dart
final genres = <String>['Ficción', 'Ensayo'];
genres.add('Poesía');
print(genres[0]);
print(genres.length);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: debe imprimir `Ficción` y luego `3`.

---

## Paso 2: `Set` — unicidad garantizada

```dart
final uniqueGenres = <String>{'Ficción', 'Ensayo'};
uniqueGenres.add('Ficción'); // ya existe: no cambia el Set
print(uniqueGenres.length);
uniqueGenres.add('Ensayo');
print(uniqueGenres.length);
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `2` dos veces — los dos `add` con valores ya existentes no
cambian el tamaño del `Set`.

---

## Paso 3: `Map` — crear y acceder por clave

```dart
final book = <String, String>{'title': 'Clean Code', 'author': 'Robert C. Martin'};
print(book['title']);
print(book['isbn']);
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `Clean Code` y luego `null` (la clave `isbn` no existe).

---

## Paso 4: Recorrer un `Map` con `entries`

```dart
final inventory = <String, int>{'Clean Code': 3, '1984': 0};

for (final entry in inventory.entries) {
  final status = entry.value > 0 ? 'Disponible' : 'Agotado';
  print('${entry.key}: $status');
}
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `Clean Code: Disponible` y `1984: Agotado`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 9 líneas (encabezado + 8 datos)
sin ningún error de `dart analyze`.
