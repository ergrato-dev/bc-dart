# Ejercicio 02 — Funciones y Closures

> Practicarás parámetros posicionales, opcionales, nombrados, arrow functions y closures
> descomentando código paso a paso.

## 🎯 Objetivos

- Declarar funciones con parámetros posicionales requeridos y opcionales (`[]`)
- Usar parámetros nombrados (`{}`) con `required` y con valor por defecto
- Escribir arrow functions (`=>`)
- Crear un closure que captura y modifica una variable de su entorno

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-condicionales-y-bucles/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Parámetros posicionales requeridos

```dart
int addCopies(int current, int incoming) => current + incoming;

print(addCopies(3, 2));
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: debe imprimir `5`.

---

## Paso 2: Parámetros posicionales opcionales — `[]`

```dart
String greet(String name, [String title = 'Sr./Sra.']) => '$title $name';

print(greet('Ana'));
print(greet('Ana', 'Dra.'));
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `Sr./Sra. Ana` y luego `Dra. Ana`.

---

## Paso 3: Parámetros nombrados — `{}`

```dart
double calculateLateFee({required int daysOverdue, double dailyRate = 500}) =>
    daysOverdue <= 0 ? 0 : daysOverdue * dailyRate;

print(calculateLateFee(daysOverdue: 3));
print(calculateLateFee(daysOverdue: 3, dailyRate: 800));
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `1500.0` y luego `2400.0`.

---

## Paso 4: Arrow functions con expresión compuesta

```dart
String formatFee(double fee) => '\$${fee.toStringAsFixed(2)}';

print(formatFee(1500));
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: debe imprimir `$1500.00`.

---

## Paso 5: Closures — una función que recuerda su estado

```dart
final counter = makeCounter();
print(counter()); // 1
print(counter()); // 2

final anotherCounter = makeCounter();
print(anotherCounter()); // 1 — instancia independiente
```

**Descomenta la sección `PASO 5`.**

✅ **Verifica**: debe imprimir `1`, `2`, `1` — el segundo contador no comparte estado con el
primero, porque cada llamada a `makeCounter()` captura su propia variable.

---

## ✅ Resultado final

Al descomentar los 5 pasos, `dart run main.dart` debe imprimir 10 líneas (encabezado + 9 datos)
sin ningún error de `dart analyze`.
