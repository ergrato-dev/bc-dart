# Ejercicio 01 — Variables y Tipos

> Practicarás `var`/`final`/`const`, tipos básicos e interpolación de strings descomentando
> código paso a paso.

## 🎯 Objetivos

- Declarar variables con el modificador correcto según su uso
- Reconocer cuándo Dart infiere un tipo y cuándo conviene ser explícito
- Usar interpolación de strings en vez de concatenación

## 📋 Requisitos

- Dart SDK local (`dart --version`) o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart

# o con Docker desde la raíz del repo:
docker compose run --rm dart dart run bootcamp/week-01-fundamentos_dart_y_entorno/2-practicas/ejercicio-01-variables-y-tipos/starter/main.dart
```

---

## Paso 1: `var`, `final` y `const`

```dart
var counter = 0;
counter = 1; // válido

final city = 'Bogotá';
// city = 'Medellín'; // ❌ Error: final no se puede reasignar

const pi = 3.1416; // conocido en tiempo de compilación
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: la consola debe imprimir `0`, `1`, `Bogotá` y `3.1416` sin errores.

---

## Paso 2: Tipos básicos e inferencia

```dart
var copies = 3;          // int, inferido
var rating = 4.5;         // double, inferido
String title = 'Dart en Acción'; // explícito
bool available = true;
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir los 4 valores, cada uno en su propia línea.

---

## Paso 3: Interpolación de strings

```dart
final name = 'Dash';
final age = 12;

print('Hola, $name');
print('El año que viene tendrás ${age + 1}');
print('En mayúsculas: ${name.toUpperCase()}');
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir 3 líneas usando `$name`, `${age + 1}` y `${name.toUpperCase()}`.

---

## Paso 4: `dynamic` vs `Object` — por qué preferir el segundo

```dart
Object somethingTyped = 'texto';
if (somethingTyped is String) {
  print('Longitud: ${somethingTyped.length}');
}
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `Longitud: 5` — nota que solo pudiste acceder a `.length`
DESPUÉS del chequeo `is String` (Dart "promueve" el tipo dentro del `if`).

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 13 líneas (encabezado +
12 datos) sin ningún error de `dart analyze` ni excepción en runtime.
